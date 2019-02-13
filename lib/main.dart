import 'package:flutter/material.dart';
import 'package:my_project_fiest/app_screens/home.dart';


void main(){
  runApp(MaterialApp(
    title: "this",
    home: Scaffold(
      body: getlist(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}


  Widget  getlist(){
  var listview = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.accessibility,color: Colors.red,),

        title: Text("first tile list"),
        subtitle: Text("sub title "),
        trailing: Icon(Icons.access_alarms),
          onTap: (){
          debugPrint("click");},
      ),
      ListTile(
        leading: Icon(Icons.map,color: Colors.red,),
        title: Text("first tile list"),
        trailing: Icon(Icons.access_alarms),
      ),
      Text("this the text",),
      Padding(padding: EdgeInsets.only(top: 44),),
      Container( padding: EdgeInsets.only(top: 55), width: 30,height: 44,color: Colors.green,)
    ],
  );
  return listview;
    }