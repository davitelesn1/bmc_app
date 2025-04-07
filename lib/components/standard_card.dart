import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  StandardCard({required this.cor, this.cardSon, this.onPressedd});
  final Color cor;
  final Widget? cardSon;
  final VoidCallback? onPressedd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedd,
      child: Container(
        child: cardSon,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
