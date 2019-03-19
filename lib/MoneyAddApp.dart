import 'package:flutter/material.dart';


class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}


class _appState extends State<app> {
  int money = 100;

  addMoney(){
    setState(() {
      money = money + 100;
    });

  }//sdf

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("see"),),
      body: Money(),
    );
  }

  Widget Money(){
    return Center(
      //color: Colors.purple,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text(" $money", style: TextStyle(
              color: money>1000 ? Colors.blue:Colors.green
            ),

            ),
            SizedBox(height: 80,),
            RaisedButton(
              child: Text("add"),
              onPressed: addMoney
            ),
          ],
        ),
    );
  }
}

