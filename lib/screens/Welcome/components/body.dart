import 'package:esraa/components/background.dart';
import 'package:esraa/components/rounded_button.dart';
import 'package:esraa/models/products.dart';
import 'package:esraa/screens/Login/login_screen.dart';
import 'package:esraa/screens/SignUp/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final String id;

  Body({this.id = '03'});
  @override
  Widget build(BuildContext context) {
    final loadedItem = Provider.of<Products>(context).findById(id);

    Size size = MediaQuery.of(context).size;
    return Background(
      bgColour: loadedItem.bgColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome To The First One,.',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: loadedItem.activeColor,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'I hope there will be more.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: loadedItem.activeColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              loadedItem.imageURL,
              height: size.height * 0.45,
              width: size.width * 0.75,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              textColor: loadedItem.bgColor,
              colour: loadedItem.activeColor,
              text: 'LOGIN',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              colour: loadedItem.colour,
              textColor: loadedItem.bgColor,
            )
          ],
        ),
      ),
    );
  }
}
