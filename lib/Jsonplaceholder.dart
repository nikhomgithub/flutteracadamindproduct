import 'package:flutter/material.dart';

class Jsonplaceholder extends StatelessWidget{
  final Function addfunc;

  Jsonplaceholder(this.addfunc){
    print("Jsonplaceholder constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("Jsonplaceholder build");
    return Container(
            margin:EdgeInsets.all(10),
            child:RaisedButton(
              color:Colors.limeAccent,
              onPressed: (){
                addfunc();
              },
              child:Text('Get Json')
            )
          );
  }
}