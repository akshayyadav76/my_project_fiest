import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 33),
        alignment: Alignment.center,
        color: Colors.cyan,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "flight",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 33,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Expanded(
                  child: Text(
                    " this what  we wont to do with this ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 33,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "flight",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 33,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Expanded(
                  child: Text(
                    " go to limit ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 33,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 44),
                child: Boruto(),
              ),
            ),
            ButtonSet(),
          ],
        ),

        // width: 200.0,height: 200.0,
        //  margin: EdgeInsets.only(right: 40),
      ),
    );
  }
}

class Boruto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/Boruto.jpg");
    Image image = Image(
      image: assetImage,
      width: 300.0,
      height: 100,
    );

    return Container(child: image);
  }
}

class ButtonSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Colors.red,
          child: Text(
            "set",
            style: TextStyle(
                fontSize: 33,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w700),
          ),
          elevation: 4,
          onPressed: () => setValues(context)),
    );
  }

  void setValues(BuildContext context) {
    var dilog = AlertDialog(
      title: Text("this dilog"),
      content: Text("value has been set "),
    );

    showDialog(context: context, builder: (BuildContext context) => dilog);
  }
}
