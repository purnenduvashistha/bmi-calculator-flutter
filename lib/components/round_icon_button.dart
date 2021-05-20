import 'package:flutter/material.dart';

//widget from scratch
class RoundIconButton extends StatelessWidget {
  //const RoundIconButton({Key key}) : super(key: key);

  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(), //from ShapeBorderClass doc
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        //from floating_Action_button.dart
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
    );
  }
}
