import 'package:flutter/material.dart';

class ProductButton extends StatelessWidget{
  final Function addfunc;

  ProductButton(this.addfunc){
    print("ProductButton constructor");
  }
 
  @override
  Widget build(BuildContext context) {
    print("ProductButton build");
    return  Container(
            margin:EdgeInsets.all(10),
            child:RaisedButton(
              color:Theme.of(context).primaryColor,
              onPressed: (){
                addfunc("New Product");
              },
              child:Text('Add One')
            )
          );
  }


}