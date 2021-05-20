import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  /*const ReusableCard({
    Key key,
  }) : super(key: key);*/

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          //color: Color(0xFF1D1E33),
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
