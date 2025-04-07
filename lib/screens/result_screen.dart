import 'package:flutter/material.dart';

import '../consts.dart';
import '../components/standard_card.dart';
import '../components/low_button.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    required this.resultIMC,
    required this.resultText,
    required this.intText,
  });

  final String resultIMC;
  final String resultText;
  final String intText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('BMC CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'RESULT',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: StandardCard(
              cor: kActiveColor,
              cardSon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(resultIMC, style: kIMCTextStyle),
                  Text(
                    intText,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Lowbutton(
            titleButton: 'RECALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
