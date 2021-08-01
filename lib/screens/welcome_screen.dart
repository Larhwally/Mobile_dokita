import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/components/rounded_button.dart';
import 'package:mobile_doctor/screens/questionnaire_intro.dart';
import 'package:mobile_doctor/screens/signin_screen.dart';
import 'package:mobile_doctor/screens/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(
              linkText: 'Sign up',
              onPressed: () {
                Navigator.pushNamed(context, SignUpScreen.id);
              },
            ),
            Container(
              child: Image.asset(
                'images/ban.png',
                width: 200.0,
                height: 200.0,
              ),
              height: 200.0,
              width: 300.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Request for doctors at the ease of your fingertips',
                style: TextStyle(
                  color: Colors.deepPurpleAccent.shade100,
                  fontFamily: 'san Serif',
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Sign in',
              colour: Colors.indigo.shade200,
              onPressed: () {
                Navigator.pushNamed(context, SigninScreen.id);
              },
            ),
            RoundedButton(
              title: 'Sign up as Doctor',
              colour: Colors.black12,
              onPressed: () {
                // Do something here
              },
            ),
            RoundedButton(
              title: 'Emergency (SOS)',
              colour: Colors.red.shade400,
              onPressed: () {
                //Do something here
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Divider(
                    color: Colors.indigo.shade200,
                    //thickness: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
