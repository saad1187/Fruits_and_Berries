import 'package:esraa/components/already_have_one.dart';
import 'package:esraa/components/background.dart';
import 'package:esraa/components/rounded_button.dart';
import 'package:esraa/components/rounded_inout_field.dart';
import 'package:esraa/components/text_field_container.dart';
import 'package:esraa/models/products.dart';
import 'package:esraa/screens/Home/home_Screen.dart';
import 'package:esraa/screens/Login/login_screen.dart';
import 'package:esraa/screens/SignUp/components/or_divider.dart';
import 'package:esraa/screens/SignUp/components/socal_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final String id;

  Body({this.id = '05'});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final loadedItem = Provider.of<Products>(context).findById(id);

    return Background(
      bgColour: loadedItem.bgColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05),
            Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: loadedItem.activeColor,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Image.asset(
              loadedItem.imageURL,
              height: size.height * 0.3,
              width: size.width * 0.8,
            ),
            SizedBox(height: size.height * 0.02),
            TextFieldContainer(
              colour: loadedItem.activeColor,
              child: RoundedInputField(
                colour: loadedItem.bgColor,
                hintText: "Your Full Name",
                onChanged: (value) {},
              ),
            ),
            TextFieldContainer(
              colour: loadedItem.activeColor,
              child: RoundedInputField(
                colour: loadedItem.bgColor,
                hintText: "Your User Name",
                onChanged: (value) {},
              ),
            ),
            TextFieldContainer(
              colour: loadedItem.activeColor,
              child: RoundedInputField(
                colour: loadedItem.bgColor,
                hintText: "Your Email",
                onChanged: (value) {},
              ),
            ),
            TextFieldContainer(
              colour: loadedItem.activeColor,
              child: RoundedInputField(
                colour: loadedItem.bgColor,
                hintText: "Your Password",
                icon: Icons.lock,
                iconSuf: Icons.visibility,
                onChanged: (value) {},
                password: true,
              ),
            ),
            TextFieldContainer(
              colour: loadedItem.activeColor,
              child: RoundedInputField(
                colour: loadedItem.bgColor,
                hintText: "Confirm Your Password",
                icon: Icons.lock,
                iconSuf: Icons.visibility,
                onChanged: (value) {},
                password: true,
              ),
            ),
            RoundedButton(
              colour: loadedItem.colour,
              textColor: loadedItem.bgColor,
              text: 'SIGN UP',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              colour: loadedItem.activeColor,
              login: false,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            OrDivider(
              colour: loadedItem.activeColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                    icon: 'F',
                    iconColour: Colors.blue[900],
                    colour: loadedItem.activeColor,
                    onPress: () {}),
                SocalIcon(
                    icon: 'T',
                    iconColour: Colors.blue[400],
                    colour: loadedItem.activeColor,
                    onPress: () {}),
                SocalIcon(
                    icon: 'G+',
                    iconColour: Colors.red[900],
                    colour: loadedItem.activeColor,
                    onPress: () {}),
              ],
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
