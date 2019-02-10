import 'package:flutter/material.dart';




void main(){
 runApp(new MyApp()); 

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"this app",
      home: new Scaffold(
        
        appBar: new AppBar(
          title: new Text("colorful math"),
        ),
        body: new Center(child: new Text("now begin flutter now this somthing very cool first time sing in develpment"
            "so good "),),
      ),
    );
  }
}
