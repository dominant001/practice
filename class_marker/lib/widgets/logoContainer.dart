import 'package:flutter/material.dart';

class LogoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.27,
      width: media.width * 1,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 10,
            top: 12,
            child: CircleAvatar(
              radius: 35.0,
              backgroundColor: Colors.indigo,
              child: Center(
                child: Text(
                  "Exam",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 35,
            child: Text(
              "App",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
