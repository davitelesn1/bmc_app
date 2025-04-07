import 'package:app_imccalc/calc_imc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/standard_card.dart';
import '../components/content_icon.dart';
import '../components/rounded_button.dart';
import '../components/low_button.dart';

import '../consts.dart';
import 'result_screen.dart';

enum Sex { male, female }

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Sex? selectSex;
  int height = 180;
  int weight = 80;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('BMC CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: StandardCard(
                    onPressedd: () {
                      setState(() {
                        selectSex = Sex.male;
                      });
                    },
                    cor: selectSex == Sex.male ? kActiveColor : kInactiveColor,
                    cardSon: ContentIcon(
                      icon: FontAwesomeIcons.mars,
                      description: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    onPressedd: () {
                      setState(() {
                        selectSex = Sex.female;
                      });
                    },
                    cor:
                        selectSex == Sex.female ? kActiveColor : kInactiveColor,
                    cardSon: ContentIcon(
                      icon: FontAwesomeIcons.venus,
                      description: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: StandardCard(
              cor: kActiveColor,
              cardSon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kDescriptionTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberCard),
                      Text('cm', style: kDescriptionTextStyle),
                    ],
                  ),
                  Slider(
                    activeColor: Color(0xFFFF5822),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: StandardCard(
                    cor: kActiveColor,
                    cardSon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kDescriptionTextStyle),
                        Text(weight.toString(), style: kNumberCard),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: StandardCard(
                    cor: kActiveColor,
                    cardSon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: kDescriptionTextStyle),
                        Text(age.toString(), style: kNumberCard),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Lowbutton(
            titleButton: 'CALCULATE',
            onPressed: () {
              CalcIMC calc = CalcIMC(weight: weight, height: height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ResultScreen(
                        resultIMC: calc.calcIMC(),
                        resultText: calc.obtainResult(),
                        intText: calc.obtainText(),
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
