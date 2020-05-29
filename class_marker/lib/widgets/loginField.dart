import 'package:flutter/material.dart';

TextEditingController usertxt = new TextEditingController();
TextEditingController passwordtxt = new TextEditingController();

Container textSection() {
  return Container(
    padding: EdgeInsets.all(5),
    child: Column(
      children: <Widget>[
        txtUsername("Usermail"),
        txtPassword("Password"),
      ],
    ),
  );
}

Widget txtUsername(String title) {
  return TextFormField(
    controller: usertxt,
    style: TextStyle(fontSize: 20),
    decoration: InputDecoration(
      hintText: title,
      contentPadding: EdgeInsets.all(10),
    ),
  );
}

Widget txtPassword(String title) {
  return TextFormField(
    obscureText: true,
    controller: passwordtxt,
    style: TextStyle(fontSize: 20),
    decoration: InputDecoration(
      hintText: title,
      contentPadding: EdgeInsets.all(10),
    ),
  );
}
