import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor/components/header.dart';
import 'package:mobile_doctor/components/rounded_button.dart';
import 'package:mobile_doctor/screens/questionnaire_end.dart';
import 'package:mobile_doctor/screens/welcome_screen.dart';

class QuestionnaireIntro extends StatefulWidget {
  static const String id = 'questionnaire_intro';

  @override
  _QuestionnaireIntroState createState() => _QuestionnaireIntroState();
}

class _QuestionnaireIntroState extends State<QuestionnaireIntro> {
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
                'We would like to ask you a few more questions to personalize your experience. We guarantee full privacy to the answers you provide and we would not share your data with anyone.',
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
                child: Image.asset('images/ok.png'),
              ),
              SizedBox(
                height: 30.0,
              ),
              RoundedButton(
                title: 'Continue',
                colour: Colors.indigo.shade200,
                onPressed: () {
                  Navigator.pushNamed(context, QuestionnaireEnd.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
