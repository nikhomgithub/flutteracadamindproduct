import 'package:flutter/material.dart';
import './Product.dart';

class ProductManager extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager>{
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
              children: products.map((element)=>Product(newproduct:element)).toList()
            )
          )
        ])
      )
    );
  }
}

