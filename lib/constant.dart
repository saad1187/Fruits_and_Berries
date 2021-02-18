import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF3D597E); //Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF6E6FF);

const kDefualtPadding = 20.0;

extension OnContext on BuildContext {
  double get mobileHeight {
    return MediaQuery.of(this).size.height;
  }

  double get mobileWidth {
    return MediaQuery.of(this).size.width;
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final Color color;

  RoundIconButton({@required this.icon, @required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mobileHeight * 0.05,
      width: context.mobileWidth * 0.10,
      child: FlatButton(
        onPressed: onTap,
        child: Icon(
          icon,
          size: 10.0,
          color: color,
        ),
      ),
    );
  }
}
