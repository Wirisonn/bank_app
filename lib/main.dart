import 'package:bank_application/screens/login_screen.dart';
import 'package:bank_application/screens/prelogin_screen.dart';
import 'package:flutter/material.dart';
import 'package:rolling_switch/rolling_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PreLoginScreen(),
    );
  }
}
