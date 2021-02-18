import 'package:esraa/components/background.dart';
import 'package:esraa/components/more_icon_button.dart';
import 'package:esraa/screens/Home/components/body.dart';
import 'package:esraa/screens/Home/components/head.dart';
import 'package:flutter/material.dart';
import 'package:esraa/constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, //Color(0xFFFFE08E),
        body: Background(
          child: Padding(
            padding: EdgeInsets.only(
              right: context.mobileWidth * 0.065,
              left: context.mobileWidth * 0.065,
              top: context.mobileHeight * 0.025,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // BackIconsButton(
                    //   color: kPrimaryLightColor,
                    //   iconColor: kPrimaryColor,
                    //   onPress: () {},
                    // ),
                    MoreIconButton(
                      color: kPrimaryColor,
                      onPress: () {},
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Head(),
                        SizedBox(height: size.height * 0.025),
                        Body(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
