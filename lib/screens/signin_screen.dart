import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/components/rounded_button.dart';
import 'package:mobile_doctor/screens/welcome_screen.dart';

class SigninScreen extends StatefulWidget {
  static const String id = 'signin_screen';

  @override
  _SigninScreen createState() => _SigninScreen();
}

class _SigninScreen extends State<SigninScreen> {
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
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Header(
                  linkText: 'Go back',
                  onPressed: () {
                    Navigator.pushNamed(context, WelcomeScreen.id);
                  },
                ),
                SizedBox(
                  width: 400.0,
                  child: TextField(
                    onChanged: (value) {
                      //DO something with the entererd value
                    },
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                    ),
                  ),
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
                  height: 20.0,
                ),
                RoundedButton(
                  title: 'Sign in',
                  colour: Colors.indigo.shade200,
                  onPressed: () {
                    //Do something here
                  },
                ),
                SizedBox(
                  height: 8.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, WelcomeScreen.id);
                  },
                  child: Text(
                    'Forgot password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.indigo.shade200,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 20.0, color: Colors.indigo.shade200),
                ),
                SizedBox(
                  height: 60.0,
                ),
                GestureDetector(
                  onTap: () {
                    //Do something here
                  },
                  child: Text(
                    'Don\'t have an account? Sign up',
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
