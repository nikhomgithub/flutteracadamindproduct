import 'package:flutter/material.dart';
import './ProductManager.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ProductManager();
  }
}