import 'package:flutter/material.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/services.dart';
import 'dart:async';


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

  });
 }

  @override
  Widget build(BuildContext context) {


    Future<ClipboardData> getData(String format) async {
      final Map<String, dynamic> result = await SystemChannels.platform.invokeMethod(
        user.text, format,

      );
//      if (result == null)
  //      return result;
      return ClipboardData(text: result[user.text]);
    }
    return Scaffold( appBar: AppBar(title: Text("copy"),),
        body: Center(
      child: ListView(
        children: <Widget>[

          SizedBox(height: 90,),

          //ConstrainedBox(constraints: BoxConstraints.expand(width: 100,height: 100),child:


          TextField(
            decoration: InputDecoration(hintText: "suer",
              border: OutlineInputBorder(),),
            controller: user,
            style: TextStyle(fontSize: 20,color: Colors.purpleAccent,
              fontFamily: "DancingScript"
            ),
            //keyboardType: TextInputType.multiline,
            maxLines: 6,
            focusNode: FocusNode(),
            scrollPadding: EdgeInsets.all(0),
            //scrollPadding: EdgeInsets.all(20),
            textInputAction: TextInputAction.newline,
           // onTap: (){Clipboard.},

          ),
          RaisedButton
            (child: Text("copy"),


              onPressed: () { getData("DancingScript-Bold.ttf");



              //Clipboard.getData("DancingScript-Bold.ttf")async{}



         //     ClipboardData(text: user.text,);

//              Clipboard.getData();
//              Scaffold.of(context).showSnackBar(SnackBar(content: Text("copy")));

             // ClipboardData data =await Clipboard.getData("text/plain");

//            ClipboardManager.copyToClipBoard(user.text).then((result) {
//              final snackBar = SnackBar(
//                content: Text('Copied to Clipboard'),
//                action: SnackBarAction(
//                  label: 'Undo',
//                  onPressed: () {},
//                ),
//              );
//              Scaffold.of(context).showSnackBar(snackBar);
//            });

          }
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
              RaisedButton(child: Text("clr"),onPressed: erase,),
              IconButton(icon: Icon(Icons.add,color: Colors.black,),onPressed: (){

              },),
            ],
          ),

          SizedBox(height: 30,),
          Text("see$see")
        ],
      ),
    ));
  }
}
