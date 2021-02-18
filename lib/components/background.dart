import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Color bgColour;

  Background({
    @required this.child,
    this.bgColour,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: bgColour,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(top: 0, left: 0, child: Container()),
          Positioned(bottom: 0, left: 0, child: Container()),
          child,
        ],
      ),
    );
  }
}
