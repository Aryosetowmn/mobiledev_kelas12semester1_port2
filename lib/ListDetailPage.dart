import 'package:flutter/material.dart';
import 'package:sofascore/ListPremiereLeague.dart';

class ListDetailPage extends StatefulWidget {
  String badge, title, description;
  ListDetailPage(
      {Key? key,
      required this.badge,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  State<ListDetailPage> createState() => ListDetailPageState();
}

class ListDetailPageState extends State<ListDetailPage> {
  final greenColor = Color.fromARGB(255, 1, 186, 118);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListDetailPage'),
          backgroundColor: greenColor,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(widget.badge)),
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Center(
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  )),
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Center(
                  child: Text(widget.description),
                ),
              )
            ]),
          ),
        ));
  }
}
