import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/screens/welcome_screen.dart';

class SigninScreen extends StatefulWidget {
  static const String id = 'signin_screen';

  @override
  _SigninScreen createState() => _SigninScreen();
}

class _SigninScreen extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(),
          child: Column(
            children: <Widget>[
              Header(
                linkText: 'Go back',
                onPressed: () {
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
              ),
              TextField(
                onChanged: (value) {
                  //DO something with the entererd value
                },
                decoration: InputDecoration(
                  hintText: 'email',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
