import 'package:flutter/material.dart';
import 'Screens/ForgotPage.dart';
import 'Screens/NewAccountPage.dart';
import 'Screens/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        'ForgotPassword': (context) => ForgotPage(),
        'NewAccount': (context) => NewAccountPage(),
      },
    );
  }
}

