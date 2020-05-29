import 'package:flutter/material.dart';
import 'package:class_marker/widgets/loginField.dart';
import 'package:class_marker/widgets/loginButton.dart';
import 'package:class_marker/widgets/logoContainer.dart';
import 'package:class_marker/widgets/socialButtons.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              LogoBox(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              textSection(),
              LoginButton(),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
