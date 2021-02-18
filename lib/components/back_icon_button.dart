import 'package:flutter/material.dart';
import 'package:esraa/constant.dart';

class BackIconsButton extends StatelessWidget {
  final Color iconColor,color;
  final Function onPress;

  BackIconsButton({
    this.iconColor = Colors.black,
    this.color = const Color(0xFFFFFCFB),
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mobileHeight * 0.06,
      width: context.mobileWidth * 0.12,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: FlatButton(
          color: color,
          child: Icon(
            Icons.arrow_back_ios,
            color: iconColor,
            size: 17.5,
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
