import 'package:flutter/material.dart';


class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  int money = 100;

  addMoney(){
    money = money + 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("see"),),
      body: Money(),
    );
  }

  Widget Money(){
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$money"),
            RaisedButton(
              child: Text("add"),
              onPressed: addMoney
            ),
          ],
        ),
    );
  }
}

