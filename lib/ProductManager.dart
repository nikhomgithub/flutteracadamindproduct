import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './Product.dart';
import './ProductButton.dart';
import './Jsonplaceholder.dart';


class ProductManager extends StatefulWidget{

  final String startProduct;
  ProductManager({this.startProduct=''}){
    print("ProductManager constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("ProductManager createState");
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager>{
  List<String> products=[];

  ProductManagerState(){
    print("ProductManagerState constructor");
  }

  @override
  void initState() {
    print("ProductManagerState initState");
    products.add(widget.startProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("ProductManagerState didUpdateWidget");
    products[0]=widget.startProduct;
    super.didUpdateWidget(oldWidget);
  }

  void addFunction(String s){
    print("Add photo");
    setState(() {
      products.add(s);
    });
  }

  Future<String> getJson() async{
    

    http.Response response=await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts/1"),
        headers: {
          "Accept":"application/json"
        }
    );
    var result=json.decode(response.body);
    print("Get Json Working");
    //print(result);
    //print(result['title']);
      setState(() {
        products.add(result['title']);
      });
  }

  @override
  Widget build(BuildContext context) {
    print("ProductManagerState build");
    return Column(children: <Widget>[
      Jsonplaceholder(getJson),
      ProductButton(addFunction),
      Product(newproducts:products)
     ] ,
    );
  }
}

