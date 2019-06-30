import 'package:flutter/material.dart';
import './Product.dart';
import './ProductButton.dart';

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
    setState(() {
      products.add(s);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ProductManagerState build");
    return Column(children: <Widget>[
      ProductButton(addFunction),
      Product(newproducts:products)
     ] ,
    );
  }
}

