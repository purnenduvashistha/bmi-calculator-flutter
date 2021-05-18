import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  /*const ReusableCard({
    Key key,
  }) : super(key: key);*/

  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        //color: Color(0xFF1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
