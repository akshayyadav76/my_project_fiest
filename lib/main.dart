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
  if(mytext.startsWith("n"))
    {
      mytext ="change to this new ";
    }else {
    mytext = "now text chnagedfgfggf  ";
  }
});
  }

  Widget BodyWiget(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext, style: new TextStyle(
              color: Colors.deepOrange,
              fontSize: 40.0,
            ),),
            new RaisedButton(child: new Text("click" , style: new TextStyle(
              color: Colors.cyanAccent,
              fontSize: 30.0,
            )),
              onPressed: _changedtext,
              color: Colors.purpleAccent,
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


