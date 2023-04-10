
import 'package:fitness_mobile_ui/screens/login_screen.dart';
import 'package:fitness_mobile_ui/screens/nav_screen.dart';
import 'package:fitness_mobile_ui/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FITBOSS',
      theme: ThemeData(
        fontFamily: "Titi"
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
