import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  List<String> products=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Easy App",style:TextStyle(color:Colors.black,fontSize:30,fontWeight: FontWeight.bold))
        ),
        body:Column(children:[
          Container(
            margin:EdgeInsets.all(10),
            child:RaisedButton(
              onPressed: (){
                setState(() {
                  products.add("Food Test");
                });
              },
              child:Text('Add One')
            )
          ),
          Card(
            child:Column(
              children: products.map((element)=>Card(
                  child:Column(
                    children: <Widget>[
                      Image.asset('./images/captain.png'),
                      Text("First Food")
                    ],
                  )
                )
              ).toList()
            )
          )
        ])
      )
    );

  }
}