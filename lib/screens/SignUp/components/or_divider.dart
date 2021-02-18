import 'package:esraa/constant.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final Color colour;

  OrDivider({this.colour = kPrimaryColor});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'OR',
              style: TextStyle(
                color: colour,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: colour,
        //Color(0xFFD9D9D9),
        height: 2.5,
      ),
    );
  }
}
