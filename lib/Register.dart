import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:sofascore/Login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final greenColor = Color.fromARGB(255, 1, 186, 118);
  final greyColor = Color.fromARGB(255, 232, 232, 232);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("login page"),
      //   backgroundColor: barColor,
      // ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Icon(
                  Icons.arrow_back,
                  color: greenColor,
                  size: 40,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 28),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text('Create a new account',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 205, 205, 205))),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextField(
                        style: TextStyle(color: greenColor),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(color: Colors.black54),
                            labelText: 'Name',
                            prefixIcon: Icon(
                              Icons.account_circle,
                            ))))),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextField(
                        style: TextStyle(color: greenColor),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(color: Colors.black54),
                            labelText: 'Email',
                            prefixIcon: Icon(
                              Icons.email_outlined,
                            ))))),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextField(
                        style: TextStyle(color: greenColor),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(color: Colors.black54),
                            labelText: 'Phone',
                            prefixIcon: Icon(
                              Icons.phone_android,
                            ))))),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextField(
                        obscureText: true,
                        style: TextStyle(color: greenColor),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(color: Colors.black54),
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                            ))))),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ThemeData()
                            .colorScheme
                            .copyWith(primary: greenColor)),
                    child: TextField(
                        obscureText: true,
                        style: TextStyle(color: greenColor),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(color: Colors.black54),
                            labelText: 'Confirm Password',
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                            ))))),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ElevatedButton(
                  child: const Text('Create Account'),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: greenColor,
                      minimumSize: const Size.fromHeight(50),
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text('Login', style: TextStyle(color: greenColor)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  onLogin() {}
}
