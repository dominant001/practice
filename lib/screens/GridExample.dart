import 'package:flutter/material.dart';

Widget CardsDemo() {
  return Card(
    child: Container(
      //height: 200,
      //color: Colors.blue,
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            width: 155,
            //color: Colors.red,
            child: Image(
              image: AssetImage('images/pic.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            height: 120,
            padding: EdgeInsets.only(top: 4, left: 8),
            //color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Kaala Kala K",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Hindi,Tamil",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    "Crime",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    color: Colors.amber,
                    child: MaterialButton(
                      //color: Colors.amberAccent,
                      child: Text(
                        "BOOK",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            wordSpacing: 5),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
