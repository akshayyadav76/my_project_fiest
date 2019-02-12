import 'dart:math';

import 'package:flutter/material.dart';



class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(
        child: Text(generalucynumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.indigo, fontSize: 30,),
        ),
      ),
    );
  }


  String generalucynumber(){
    var random = Random();
    int number= random.nextInt(10);
    return "heelow workd= ${number}";
  }
}
