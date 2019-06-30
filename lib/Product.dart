import 'package:flutter/material.dart';

class Product extends StatelessWidget{
  final String newproduct;

  Product({this.newproduct});

  @override
  Widget build(BuildContext context) {
    return Card(
                  child:Column(
                    children: <Widget>[
                      Image.asset('./images/captain.png'),
                      Text(newproduct)
                    ],
                  )
                );
  }
}