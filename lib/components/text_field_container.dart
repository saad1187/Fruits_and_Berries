import 'package:flutter/material.dart';
import 'package:esraa/constant.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final Color colour;

  const TextFieldContainer({
    this.child,
    this.colour = kPrimaryLightColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: colour,
      ),
      child: child,
    );
  }
}
