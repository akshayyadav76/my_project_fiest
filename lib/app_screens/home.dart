import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child:   Container(
      padding: EdgeInsets.only(top: 33),
      alignment: Alignment.center,
      color: Colors.cyan,
      child: Column(children: <Widget>[

        Row(
          children: <Widget>[
            Expanded(child:  Text("flight", textDirection: TextDirection.ltr,
              style: TextStyle(decoration: TextDecoration.none,
                  fontSize: 33 , fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),

            ),),
            Expanded(child:  Text(" this what  we wont to do with this ", textDirection: TextDirection.ltr,
              style: TextStyle(decoration: TextDecoration.none,
                  fontSize: 33 , fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(child:  Text("flight", textDirection: TextDirection.ltr,
              style: TextStyle(decoration: TextDecoration.none,
                  fontSize: 33 , fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),

            ),),
            Expanded(child:  Text(" go to limit ", textDirection: TextDirection.ltr,
              style: TextStyle(decoration: TextDecoration.none,
                  fontSize: 33 , fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),),
          ],
        ),
        Boruto()

      ],),

     // width: 200.0,height: 200.0,
    //  margin: EdgeInsets.only(right: 40),

    ),
    );
  }
}

class Boruto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage("images/Boruto.jpg");
    Image image=Image(image: assetImage, width: 300.0, height: 100,);

    return Container(child: image);
  }
}
