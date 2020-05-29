import 'dart:io';
import 'package:class_marker/models/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:class_marker/widgets/loginField.dart';

Future loadPerson() async {
  String url = 'http://72505dac7b5f.ngrok.io/testenginedemo/login';
  Map<String, String> data = {
    "userid": usertxt.text,
    "password": passwordtxt.text
  };
  var data2 = jsonEncode(data);
  print("Input Is $data2");
  var jsonData = null;
  var response = await http.post(url,
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: data2);
  jsonData = json.decode(response.body);
  print("data is $jsonData");
  return Person.fromJson(jsonData);
}
