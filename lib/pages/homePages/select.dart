import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelectPage extends StatefulWidget {
  @override
  SelectPageState createState() => new SelectPageState();
}

class SelectPageState extends State<SelectPage> {
  Widget banner = new Image (
    image: AssetImage('images/lake.jpeg'),
    fit: BoxFit.fill,
    height: 200.0
  );

  Widget modules = new Column(
    children: <Widget>[
      Row(children: <Widget>[
        
      ],)
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: [
        banner
      ]
    );
  }
}