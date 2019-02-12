import 'package:flutter/material.dart';



class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(
        child: Text("heelow workd",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.indigo, fontSize: 30,),
        ),
      ),
    );
  }
}
