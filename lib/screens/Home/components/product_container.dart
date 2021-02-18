import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;

  ProductContainer({
    this.child,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.height * 0.03,
        vertical: size.width * 0.05,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: child,
    );
  }
}
