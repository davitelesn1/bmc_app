import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundedButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF7E7E7E),
    );
  }
}
