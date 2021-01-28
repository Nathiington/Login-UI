import 'package:flutter/material.dart';
import 'package:login_2/pallete.dart';

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 40.0),
      child: FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'ForgotPassword'),
        child: Text(
          'Forgot Password?',
          style: bBodyText,
        ),
        padding: EdgeInsets.only(right: 0.0),
      ),
    );
  }
}