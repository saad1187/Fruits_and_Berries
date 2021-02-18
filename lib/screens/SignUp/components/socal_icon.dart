import 'package:flutter/material.dart';

class SocalIcon extends StatelessWidget {
  final String icon;
  final Color iconColour, colour;
  final Function onPress;

  const SocalIcon({
    this.icon,
    this.iconColour,
    this.onPress,
    this.colour,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: size.height * 0.08,
        width: size.height * 0.085,
        margin: EdgeInsets.symmetric(horizontal: size.height * 0.01),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: colour),
            shape: BoxShape.circle),
        child: Center(
          child: Text(
            icon,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: iconColour,
              fontWeight: FontWeight.w900,
              fontSize: size.height * 0.02,
            ),
          ),
        ),
      ),
    );
  }
}
