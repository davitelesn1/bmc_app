import 'package:flutter/material.dart';
import '../consts.dart';

class Lowbutton extends StatelessWidget {
  Lowbutton({required this.onPressed, required this.titleButton});
  final VoidCallback onPressed;
  final String titleButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(child: Text(titleButton, style: kBigButtonTextStyle)),
        color: kLowerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kHeightLowerContainer,
      ),
    );
  }
}
