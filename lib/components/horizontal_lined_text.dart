import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalLinedText extends StatelessWidget {
  HorizontalLinedText({required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      child: TextField(
        onChanged: (value) {
          //DO something with the entererd value
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.indigo.shade200),
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
        ),
      ),
    );
  }
}
