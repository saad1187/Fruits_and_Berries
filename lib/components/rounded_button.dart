import 'package:flutter/material.dart';
import 'package:esraa/constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color colour, textColor;


  const RoundedButton({
    this.text,
    this.onPress,
    this.colour = kPrimaryColor,
    this.textColor = kPrimaryLightColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: FlatButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          color: colour,
        ),
      ),
    );
  }
}
