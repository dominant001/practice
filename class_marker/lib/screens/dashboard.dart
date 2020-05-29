import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:class_marker/widgets/loginButton.dart';
import 'package:class_marker/models/model.dart';
import 'package:class_marker/widgets/loginButton.dart';
import 'package:class_marker/server/services.dart';

class Dashboard extends StatefulWidget {
  final Person person;
  Dashboard(this.person);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SafeArea(
        child: Container(
          height: media.height * 1,
          margin:
              EdgeInsets.only(left: 15.0, top: 0.0, right: 15.0, bottom: 0.0),
          child: Column(
            children: <Widget>[
              Container(
                height: media.height * 0.12,
                padding: EdgeInsets.all(4),
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: 0.0, top: 20, right: 0.0, bottom: 0.0),
                decoration: BoxDecoration(
                  color: new Color(0xffccf2ff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30.0,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 10.0, top: 0.0, right: 0.0, bottom: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "${widget.person.userid}",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${widget.person.roleName}",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'B.Tech(Computer Science)',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.black,
                              ),
                            )
                          ],
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 10, right: 0.0, bottom: 0.0),
                          decoration: BoxDecoration(
                              color: new Color(0xffccf2ff),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  width: 1.0, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(4)),
                          width: media.width * 0.27,
                          height: media.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "25",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Tests Assigned",
                                style: TextStyle(fontSize: 9),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 10.0, top: 5, right: 0.0, bottom: 0.0),
                          decoration: BoxDecoration(
                              color: new Color(0xffccf2ff),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  width: 1.0, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(4)),
                          width: media.width * 0.27,
                          height: media.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "40",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Teammates",
                                style: TextStyle(fontSize: 9),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.edit,
                              size: 20,
                            ),
                            onPressed: () {})
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
