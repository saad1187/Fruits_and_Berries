import 'package:flutter/material.dart';
import 'package:esraa/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon, iconSuf;
  final ValueChanged<String> onChanged;
  final bool password;
  final Color colour;

  const RoundedInputField({
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.iconSuf,
    this.password = false,
    this.colour = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: colour,
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: colour),
        border: InputBorder.none,
        suffixIcon: Icon(
          iconSuf,
          color: colour,
        ),
      ),
      style: TextStyle(
        color: colour,
      ),
      onChanged: onChanged,
    );
  }
}
