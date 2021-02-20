import 'package:esraa/components/already_have_one.dart';
import 'package:esraa/components/background.dart';
import 'package:esraa/components/rounded_button.dart';
import 'package:esraa/components/rounded_inout_field.dart';
import 'package:esraa/components/text_field_container.dart';
import 'package:esraa/models/products.dart';
import 'package:esraa/screens/Home/home_Screen.dart';
import 'package:esraa/screens/SignUp/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final String id;

  Body({this.id = '06'});

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
              'LOGIN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: loadedItem.colour,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              loadedItem.imageURL,
              height: size.height * 0.30,
            ),
            TextFieldContainer(
              colour: loadedItem.colour,
              child: RoundedInputField(
                hintText: 'Your Email',
                onChanged: (value) {},
                colour: loadedItem.bgColor,
              ),
            ),
            TextFieldContainer(
              colour: loadedItem.colour,
              child: RoundedInputField(
                hintText: 'Your Password',
                icon: Icons.lock,
                iconSuf: Icons.visibility,
                onChanged: (value) {},
                password: true,
                colour: loadedItem.bgColor,
              ),
            ),
            RoundedButton(
              colour: loadedItem.activeColor,
              textColor: loadedItem.bgColor,
              text: 'LOGIN',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              colour: loadedItem.colour,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
