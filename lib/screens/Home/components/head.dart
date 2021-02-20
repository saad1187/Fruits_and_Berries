// import 'package:esraa/components/back_icon_button.dart';
import 'package:esraa/constant.dart';
import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(height: context.mobileHeight * 0.02),
        Text(
          'Fruits and Berries.',
          style: TextStyle(
            fontSize: context.mobileWidth * 0.085,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(height: context.mobileHeight * 0.02),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.mobileHeight * 0.03,
            vertical: context.mobileWidth * 0.02,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: TextField(
            style: TextStyle(fontSize: 20.0, color: kPrimaryColor),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: 20.0,
                color: kPrimaryColor,
              ),
              border: InputBorder.none,
              icon: Icon(
                Icons.search,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
