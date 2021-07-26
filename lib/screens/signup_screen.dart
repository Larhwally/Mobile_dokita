import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/components/horizontal_lined_text.dart';
import 'package:mobile_doctor/components/rounded_button.dart';
import 'package:mobile_doctor/screens/questionnaire_intro.dart';
import 'package:mobile_doctor/screens/signin_screen.dart';
import 'package:mobile_doctor/screens/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Container(
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
                HorizontalLinedText(
                  hintText: 'First Name',
                ),
                SizedBox(
                  height: 10.0,
                ),
                HorizontalLinedText(
                  hintText: 'Last Name',
                ),
                SizedBox(
                  height: 10.0,
                ),
                HorizontalLinedText(
                  hintText: 'Phone Number',
                ),
                SizedBox(
                  height: 10.0,
                ),
                HorizontalLinedText(
                  hintText: 'Email Address',
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 400.0,
                  child: TextField(
                    onChanged: (value) {
                      //DO something with the entererd value
                    },
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.indigo.shade200),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                HorizontalLinedText(
                  hintText: 'Home Address',
                ),
                SizedBox(
                  height: 10.0,
                ),
                HorizontalLinedText(
                  hintText: 'Emergency Contact',
                ),
                Flexible(
                  child: SizedBox(
                    height: 20.0,
                  ),
                ),
                RoundedButton(
                  title: 'Continue',
                  colour: Colors.indigo.shade200,
                  onPressed: () {
                    Navigator.pushNamed(context, QuestionnaireIntro.id);
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SigninScreen.id);
                  },
                  child: Text(
                    'Already have an account? Sign in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.indigo.shade200),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
