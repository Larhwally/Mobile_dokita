import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({required this.linkText, required this.onPressed});

  final String linkText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset('images/logo.png'),
                  height: 30.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'DOKITA',
                    style: TextStyle(
                        color: Colors.indigo.shade200,
                        fontSize: 20.0,
                        fontFamily: 'Sans Serif'),
                  ),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: onPressed,
              child: Text(
                linkText,
                style: TextStyle(color: Colors.indigo.shade200, fontSize: 15.0),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        )
      ],
    );
  }
}
