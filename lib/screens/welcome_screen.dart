import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/components/rounded_button.dart';
import 'package:mobile_doctor/screens/signin_screen.dart';

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
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Header(
                  linkText: 'Sign up',
                  onPressed: () {
                    //Do something here
                  },
                ),
                Container(
                  child: Image.asset('images/banner.png'),
                  height: 200.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Request for doctors at the ease of your fingertips',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent.shade100,
                        fontFamily: 'san Serif',
                        fontSize: 10.0),
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
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
