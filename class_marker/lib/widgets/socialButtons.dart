import 'package:flutter/material.dart';

Widget SocialButtons() {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 35.0, top: 10, right: 35.0, bottom: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "Remember Me",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontStyle: FontStyle.normal),
            ),
            FlatButton(
              padding: EdgeInsets.all(10),
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 60.0, top: 20, right: 60.0, bottom: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            MaterialButton(
              minWidth: 100,
              padding: EdgeInsets.all(10),
              onPressed: () {},
              child: Text(
                'f',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              color: Colors.blueAccent,
            ),
            MaterialButton(
              minWidth: 100,
              padding: EdgeInsets.all(10),
              onPressed: () {},
              child: Text(
                'G',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 30.0, top: 20, right: 30.0, bottom: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              "Don't have Account?",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontStyle: FontStyle.normal),
            ),
            FlatButton(
              padding: EdgeInsets.all(10),
              onPressed: () {},
              child: Text(
                'SignUp',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
