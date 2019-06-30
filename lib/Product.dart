import 'package:flutter/material.dart';

class Product extends StatelessWidget{
  final List<String> newproducts;

  Product({this.newproducts}){
    print("Product constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("Product build");
    return Card(
      child:Column(children:newproducts.map((element)=>
        Card(
          child:Column(
            children: <Widget>[
              Image.asset('./images/captain.png'),
              Text(element)
            ],
          )
        )
        ).toList()
      )
    );
  }
}