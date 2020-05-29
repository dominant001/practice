import 'package:class_marker/models/model.dart';
import 'package:flutter/material.dart';
import 'package:class_marker/widgets/loginField.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:class_marker/screens/dashboard.dart';
import 'package:class_marker/server/services.dart';

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0, top: 10, right: 0.0, bottom: 0.0),
      child: MaterialButton(
        minWidth: 350,
        padding: EdgeInsets.all(8),
        onPressed: () async {
          var info = await loadPerson();
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Dashboard(info)));
        },
        child: Text(
          'Login',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        color: Colors.indigo,
      ),
    );
  }

//  String username = "";
//  String message = "";
//  String Role = "";
//  Future signin() async {
//    //print("pppp");
//    String url = 'http://55b681dc10d4.ngrok.io/testenginedemo/login';
//    Map<String, String> data = {
//      "userid": usertxt.text,
//      "password": passwordtxt.text
//    };
//    var data2 = jsonEncode(data);
//    //print('data is $data2');
//    //    print("data $data");
//    var jsonData = null;
//    var response = await http.post(url,
//        headers: {HttpHeaders.contentTypeHeader: "application/json"},
//        body: data2);
//    //print(response.statusCode);
//    //print(response.body);
//    if (response.statusCode == 200) {
//      jsonData = json.decode(response.body);
////      username = jsonData['userid'.toString()];
////      message = jsonData['message'.toString()];
////      Role = jsonData['roleName'.toString()];
////      print("Username is $username Role is $Role And Message is $message");
//      Navigator.of(context).push(MaterialPageRoute(
//        builder: (context) => Dashboard(),
//      ));
//    } else {
//      print("Error");
//    }
//  }
}
