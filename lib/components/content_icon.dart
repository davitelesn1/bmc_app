import 'package:flutter/material.dart';
import '../consts.dart';

class ContentIcon extends StatelessWidget {
  const ContentIcon({required this.icon, required this.description});

  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 95),
        SizedBox(height: 15),
        Text(description, style: kDescriptionTextStyle),
      ],
    );
  }
}
