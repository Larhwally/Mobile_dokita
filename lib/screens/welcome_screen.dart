import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(),
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/logo.png'),
                    height: 25.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'DOKITA',
                      style: TextStyle(color: Colors.indigo.shade400),
                    ),
                  ),
                ],
              ),
              Container(
                child: Image.asset('images/banner.png'),
                height: 200.0,
              ),
              RichText(
                text: TextSpan(
                  text: 'Request for doctors at the ease of your fingertips',
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
              RoundedButton(
                title: 'Sign in',
                colour: Colors.deepPurple.shade200,
                onPressed: () {
                  //do some operations here
                },
              ),
              RoundedButton(
                title: 'Sign up as Doctor',
                colour: Colors.white60,
                onPressed: () {},
              ),
              RoundedButton(
                title: 'Emergency (SOS)',
                colour: Colors.red.shade400,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
