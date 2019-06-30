import 'package:flutter/material.dart';
import './ProductManager.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  MyApp(){
    print("MyApp constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("MyApp createState");
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  String initStateValue='';

  MyAppState(){
    print("MyAppState constructor");
  }

  @override
  void initState() {
    initStateValue="Init Product";
    print("MyAppState initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("MyAppState build");
    return MaterialApp(
      theme:ThemeData(
        brightness:Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,

      ),
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Easy App",style:TextStyle(color:Colors.black,fontSize:30,fontWeight: FontWeight.bold))
        ),
        body:Column(children: <Widget>[
          Container(
            margin:EdgeInsets.all(10),
            child:RaisedButton(
              color:Theme.of(context).primaryColor,
              onPressed: (){
                setState(() {
                  initStateValue="Hello World";
                });
              },
              child:Text('Change Init')
            )
          ),
          ProductManager(startProduct: initStateValue)
        ],)
        
          
      )
    );
  }
}