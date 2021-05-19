import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum EnumGender {Male, Female}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  EnumGender selectedGender;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // 1->male, 2->female
  // void updateColor(EnumGender gender)
  // {
  //   if(gender==EnumGender.Male)
  //   {
  //     if(maleCardColor==inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     }
  //     else
  //       maleCardColor = inactiveCardColor;
  //   }
  //   if(gender==EnumGender.Female)
  //   {
  //     if(femaleCardColor==inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     }
  //     else
  //       femaleCardColor = inactiveCardColor;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = EnumGender.Male;
                    });
                  },
                  colour: selectedGender==EnumGender.Male ? activeCardColor : inactiveCardColor, //Ternary Operator
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = EnumGender.Female;
                    });
                  },
                  colour: selectedGender==EnumGender.Female ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

