import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Benika/screens/GridExample.dart';

class GridExample extends StatefulWidget {
  @override
  _GridExampleState createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          //color: Colors.red,
          child: GridView.count(
            childAspectRatio: 0.59,
            crossAxisCount: 2,
            padding: EdgeInsets.all(5),
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
            children: <Widget>[
              CardsDemo(),
              CardsDemo(),
              CardsDemo(),
              CardsDemo(),
              CardsDemo(),
              CardsDemo(),
              CardsDemo(),
              CardsDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
