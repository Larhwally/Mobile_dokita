import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/components/rounded_button.dart';
import 'package:mobile_doctor/screens/welcome_screen.dart';

class QuestionnaireEnd extends StatefulWidget {
  static const String id = 'questionnaire_end';

  @override
  _QuestionnaireEndState createState() => _QuestionnaireEndState();
}

class _QuestionnaireEndState extends State<QuestionnaireEnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Header(
                linkText: 'Go back',
                onPressed: () {
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Thank you for your response. Your feedback has been saved and we jope to use it to serve you better',
                style: TextStyle(
                  color: Colors.indigo.shade100,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 250.0,
                child: Image.asset('images/ok2.png'),
              ),
              SizedBox(
                height: 30.0,
              ),
              RoundedButton(
                title: 'Continue',
                colour: Colors.indigo.shade200,
                onPressed: () {
                  //Do something here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
