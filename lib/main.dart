
import 'package:flutter/material.dart';
import 'package:my_project_fiest/app_screens/first_screen.dart';


void main(){
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "dd",
        home: Scaffold(
          appBar: AppBar(title: Text("app bar"),),
          body: FirstScreen()
        )
    );
  }


}