import 'package:flutter/material.dart';


class LoginSet extends StatefulWidget {
  @override
  _LoginSetState createState() => _LoginSetState();
}

class _LoginSetState extends State<LoginSet> {
  TextEditingController user= TextEditingController();
  TextEditingController clr = TextEditingController();
  String see="";

void erase(){
  setState(() {
    user.clear();
    clr.clear();
  });
}

 void log(){
  user.text;
  setState(() {
    see= user.text;
    user.runtimeType;
  });
 }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 90,),
          TextField(decoration: InputDecoration(hintText: "suer",
              border: OutlineInputBorder(),),
            controller: user,
          ),
          SizedBox(height: 40,),
          TextField(
            controller: clr,
            decoration: InputDecoration(hintText: "aa",border:OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(child: Text("login"),onPressed: log ,),
              RaisedButton(child: Text("clr"),onPressed: erase,)
            ],
          ),
          SizedBox(height: 30,),
          Text("see$see")
        ],
      ),
    );
  }
}
