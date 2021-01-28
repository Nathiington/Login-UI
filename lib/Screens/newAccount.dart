import 'package:flutter/material.dart';
import 'package:login_2/pallete.dart';

class NewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'NewAccount'),
        child: Text(
          'Create New Account',
          style: bBodyText,
        ),
        padding: EdgeInsets.only(right: 0.0),
      ),
    );
  }
}