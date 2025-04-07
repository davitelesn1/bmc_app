import 'package:flutter/material.dart';
import 'screens/mainscreen.dart';

void main() => runApp(IMCCalculator());

class IMCCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: Color(0xFF565656),
        appBarTheme: AppBarTheme(
          color: Color(0xFF565656),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          elevation: 1,
          shadowColor: Colors.black54,
        ),
      ),
      home: MainScreen(),
    );
  }
}
