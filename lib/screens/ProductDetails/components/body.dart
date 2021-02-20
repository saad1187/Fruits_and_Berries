import 'package:esraa/components/back_icon_button.dart';
import 'package:esraa/components/background.dart';
import 'package:esraa/components/more_icon_button.dart';
import 'package:esraa/models/products.dart';
import 'package:esraa/screens/ProductDetails/components/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:esraa/constant.dart';

class Body extends StatelessWidget {
  final String id;
  final int itemNumber;

  Body({
    this.id,
    this.itemNumber = 1,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final loadedItem = Provider.of<Products>(context).findById(id);

    return Background(
      bgColour: loadedItem.bgColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.025,
                left: size.width * 0.065,
                right: size.width * 0.065,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackIconsButton(
                    color: loadedItem.activeColor,
                    iconColor: loadedItem.bgColor,
                    onPress: () {
                      Navigator.pop(context);
                    },
                  ),
                  MoreIconButton(
                    color: loadedItem.activeColor,
                    onPress: () {},
                  ),
                ],
              ),
            ),
            ImageSlider(
              id: id,
            ),
//
            SizedBox(height: size.height * 0.05),
            Container(
              color: loadedItem.bgColor,
              child: Container(
                padding: EdgeInsets.only(
                  top: size.height * 0.045,
                  left: size.width * 0.065,
                  right: size.width * 0.065,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      loadedItem.title,
                      style: TextStyle(
                          color: loadedItem.activeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0),
                    ),
                    SizedBox(height: size.height * 0.01),

                    Text(
                      '1 ${loadedItem.count}',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
//
                    SizedBox(height: size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.4,
                          padding: EdgeInsets.symmetric(
                            horizontal: context.mobileHeight * 0.01,
                            vertical: context.mobileWidth * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: loadedItem.activeColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RoundIconButton(
                                color: loadedItem.bgColor,
                                icon: FontAwesomeIcons.minus,
                                onTap: () {},
                              ),
                              Text(
                                itemNumber.toString(),
                                style: TextStyle(color: loadedItem.bgColor),
                              ),
                              RoundIconButton(
                                color: loadedItem.bgColor,
                                icon: FontAwesomeIcons.plus,
                                onTap: () {},
                              )
                            ],
                          ),
                        ),
                        Text(
                          '\$ ${loadedItem.price.toString()}',
                          style: TextStyle(
                            color: loadedItem.activeColor,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
//
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'Product Description',
                      style: TextStyle(
                        color: loadedItem.activeColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      loadedItem.description,
                      style: TextStyle(
                        color: loadedItem.activeColor,
                        fontSize: 16.0,
                      ),
                    ),
//
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.017,
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: size.height * 0.04),
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: loadedItem.activeColor),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: loadedItem.activeColor,
                              size: size.width * 0.09,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: size.height * 0.04),
                          width: size.width * 0.6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Add to Card',
                                style: TextStyle(
                                    color: loadedItem.bgColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.04,
                                  horizontal: size.width * 0.08),
                              color: loadedItem.activeColor,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
