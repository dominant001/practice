import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:class_marker/models/model.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class JsonDemo extends StatefulWidget {
  @override
  _JsonDemoState createState() => _JsonDemoState();
}

class _JsonDemoState extends State<JsonDemo> {
  Future loadPerson() async {
    String url = 'http://55b681dc10d4.ngrok.io/testenginedemo/login';
    Map<String, String> data = {"userid": "amit", "password": "amit123"};
    var data2 = jsonEncode(data);
    //print('data is $data2');
    //    print("data $data");
    var jsonData = null;
    var response = await http.post(url,
        headers: {HttpHeaders.contentTypeHeader: "application/json"},
        body: data2);
    jsonData = json.decode(response.body);
    print("data is $jsonData");
    Person person = new Person.fromJson(jsonData);
    print("Name is ${person.userid}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPerson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Demo"),
      ),
    );
  }
}
