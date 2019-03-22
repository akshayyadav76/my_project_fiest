import 'package:flutter/material.dart';
import 'package:my_project_fiest/app_screens/home.dart';
import 'package:my_project_fiest/MoneyAddApp.dart';
import 'package:my_project_fiest/login setstate.dart';

void main(){
  runApp(MaterialApp(
    title: "this",
    home: Scaffold(
      body: LoginSet(),                                  // getlist(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}


  Widget  getlist(){
  var listview = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.accessibility,color: Colors.red,),

        title: Text("first tile list"),
        subtitle: Text("sub title "),
        trailing: Icon(Icons.access_alarms),
          onTap: (){
          debugPrint("click");},
      ),
      ListTile(
        leading: Icon(Icons.map,color: Colors.red,),
        title: Text("first tile list"),
        trailing: Icon(Icons.access_alarms),
      ),
      Text("this the text",),
      Padding(padding: EdgeInsets.only(top: 44),),
      Container( padding: EdgeInsets.only(top: 55), width: 30,height: 44,color: Colors.green,)
    ],
  );
  return listview;
    }


/*void main() {
  runApp(MaterialApp(
    title: "interest calculator",
    theme: ThemeData(primaryColor: Colors.indigo,accentColor: Colors.red,brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
    home: form(),
  ));
}*/

class form extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  var formkey=GlobalKey<FormState>();

  var coutencies = ["rupess", "dollar", "others"];
  final minmummargin = 5.0;
  var selcteddrop="rupess";

  TextEditingController pricipalcontroller =TextEditingController();
  TextEditingController ratecontroller =TextEditingController();
  TextEditingController entertimecontroller =TextEditingController();
  
  var displeyresult ="";

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle=Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator app"),
      ),
      body: Form(
        key: formkey,
        child:Padding( padding: EdgeInsets.only(top: 20), child:  ListView(
        //margin: ,

          children: <Widget>[
            imagess(),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "pricipal",
                  hintText: "enter your intrest",
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0))),

              keyboardType: TextInputType.number,
              validator: (String vlaue){if(vlaue.isEmpty){return "plese enrt principal";}},
              style: textStyle,
              controller: pricipalcontroller,

            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "rate",
                  hintText: "enter your intrest",
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0))),
              keyboardType: TextInputType.number,
              style: textStyle,
              controller: ratecontroller,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "enter time",
                        hintText: "time periad",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    controller: entertimecontroller,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: DropdownButton<String>(
                  items: coutencies.map((String values) {
                    return DropdownMenuItem<String>(
                      value: values,
                      child: Text(values),
                    );
                  }).toList(),

                  value: selcteddrop,
                  onChanged: (String newvlaueselected) {
                    finselecteddrop (newvlaueselected);
                  },
                )), ],),

               Padding(padding: EdgeInsets.only(top: 10, bottom: 10),child:
               Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text("claculate",style: textStyle,),
                        onPressed: () {
                          setState(() {
                            if(formkey.currentState.validate()){this.displeyresult=calculaterate();}

                          });
                        },),),
                    SizedBox(width: 8,),
                    Expanded(
                      child: RaisedButton(
                        child: Text("resate",style: textStyle,),
                        onPressed: () {
                          setState(() {
                            resate();
                          });
                        },),),




                  ],)),
            Text(displeyresult),
          ],
        ),
      ),
    ));

  }



  imagess() {
    AssetImage assetImage = AssetImage("images/tac.jpg");
    Image image = Image(
      image: assetImage,
      width: 80,
      height: 80,
    );
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: image,
    );
  }

  void finselecteddrop(String newvlaueselected){
    setState(() {
      this.selcteddrop = newvlaueselected;
    });
  }

 String calculaterate(){
    double principal= double.parse( pricipalcontroller.text);
    double rate= double.parse( ratecontroller.text);
    double entertime= double.parse( entertimecontroller.text);

    double totalamount=principal +(principal *rate*entertime)/100;
    String result = "after $entertime years of interest will be $totalamount $selcteddrop";
    return result;
 }

 resate(){
    pricipalcontroller.text="";
    ratecontroller.text="";
    entertimecontroller.text="";
 }
}

