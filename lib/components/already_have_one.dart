import 'package:flutter/material.dart';
import 'package:esraa/constant.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function onPress;
  final Color colour;

  const AlreadyHaveAnAccountCheck({
    this.login = true,
    this.onPress, this.colour =kPrimaryColor ,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ? " : "Already Have An Account ? ",
          style: TextStyle(color: colour),
        ),
        GestureDetector(
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(color: colour, fontWeight: FontWeight.bold),
          ),
          onTap: onPress,
        ),
      ],
    );
  }
}
