import 'package:esraa/constant.dart';
import 'package:flutter/material.dart';

class MoreIconButton extends StatelessWidget {
  final Color color;
  final Function onPress;

  MoreIconButton({
    this.color = Colors.black,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mobileHeight * 0.06,
      width: context.mobileWidth * 0.12,
      child: GestureDetector(
        child: Icon(
          Icons.more_vert_rounded,
          size: 30.0,
          color: color,
        ),
        onTap: onPress,
      ),
    );
  }
}
