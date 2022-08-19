import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sofascore/ListDetailPage.dart';
import 'dart:convert';
import 'package:sofascore/PremiereLeageModel.dart';
import 'package:http/http.dart' as http;
import 'package:sofascore/Register.dart';

class ListPremiereLeague extends StatefulWidget {
  const ListPremiereLeague({Key? key}) : super(key: key);

  @override
  State<ListPremiereLeague> createState() => _ListPremiereLeagueState();
}

class _ListPremiereLeagueState extends State<ListPremiereLeague> {
  PremiereLeagueModel? premiereLeagueModel;
  bool isloaded = true;
  final greenColor = Color.fromARGB(255, 1, 186, 118);

  void getAllListPL() async {
    setState(() {
      isloaded = false;
    });
    final res = await http.get(
      Uri.parse(
          "https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League"),
    );
    print("status code " + res.statusCode.toString());
    premiereLeagueModel =
        PremiereLeagueModel.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + premiereLeagueModel!.teams![0].strTeam.toString());
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllListPL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text("List Premiere League"),
      ),
      body: Center(
        child: Container(
          child: isloaded
              ? ListView.builder(
                  itemCount: premiereLeagueModel!.teams!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListDetailPage(
                                      badge: premiereLeagueModel!
                                          .teams![index].strTeamFanart2
                                          .toString(),
                                      title: premiereLeagueModel!
                                          .teams![index].strTeam
                                          .toString(),
                                      description: premiereLeagueModel!
                                          .teams![index].strDescriptionEN
                                          .toString(),
                                    )));
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 20,
                                  height: 20,
                                  child: Image.network(premiereLeagueModel!
                                      .teams![index].strTeamBadge
                                      .toString())),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(premiereLeagueModel!
                                      .teams![index].strTeam
                                      .toString()),
                                  Text(premiereLeagueModel!
                                      .teams![index].strStadium
                                      .toString()),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
