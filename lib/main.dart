import 'package:flutter/material.dart';

void main() => runApp(MyApp() );//fat arrow notation



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
       appBar: AppBar(title: Text("appbar"), elevation: 15, actions: <Widget>[],),
     // bottomNavigationBar: BottomAppBar(elevation: 20,notchMargin: 22,color: Colors.green,),
      body: Card(child: Column(children: <Widget>[Image.asset("assets/tac.jpg"),Text("food ")],),),

    ),);
  }
}
