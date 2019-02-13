import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:   Container(
      alignment: Alignment.center,
      color: Colors.cyan,
      child: Row(
        children: <Widget>[
          Text("flight", textDirection: TextDirection.ltr,
            style: TextStyle(decoration: TextDecoration.none,
                fontSize: 33 , fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),

          ),
           Expanded(child:  Text(" this what  we wont to do with this ", textDirection: TextDirection.ltr,
            style: TextStyle(decoration: TextDecoration.none,
                fontSize: 33 , fontFamily: "Raleway",
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic),
          ),),
        ],
      )

     // width: 200.0,height: 200.0,
    //  margin: EdgeInsets.only(right: 40),

    ),
    );
  }
}
