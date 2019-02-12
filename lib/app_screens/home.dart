import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:   Container(
      alignment: Alignment.center,
      color: Colors.cyan,
      child: Text("flight", textDirection: TextDirection.ltr,
        style: TextStyle(decoration: TextDecoration.none, fontSize: 33 ),

      ),
     // width: 200.0,height: 200.0,
    //  margin: EdgeInsets.only(right: 40),

    ),
    );
  }
}
