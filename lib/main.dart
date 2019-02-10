import 'package:flutter/material.dart';




void main(){
 runApp(new MyApp()); 

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"this app",
      home: new HomePage(),
    );
  }
}




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext="this is changed";

  void _changedtext(){
setState(() {
  mytext ="now text chnaged ";

});
  }

  Widget BodyWiget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(mytext),
            new RaisedButton(child: new Text("click"),
              onPressed: _changedtext,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: new Text("myapp"),
      ),

      body: BodyWiget(),
    );
  }
}


