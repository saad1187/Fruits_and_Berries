import 'package:carousel_slider/carousel_slider.dart';
import 'package:esraa/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageSlider extends StatefulWidget {
  final String id;

  ImageSlider({
    this.id,
  });
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final loadedItem = Provider.of<Products>(context).findById(widget.id);
    final Size size = MediaQuery.of(context).size;

    return Column(children: [
      CarouselSlider(
        items: loadedItem.imgList.map((item) {
          return Container(
            child: Image.asset(
              item,
              fit: BoxFit.contain,
            ),
          );
        }).toList(),
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      SizedBox(
        height: size.height * 0.03,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: loadedItem.imgList
            .asMap()
            .entries
            .map((e) => Container(
                  width: 9.0,
                  height: 9.0,
                  margin: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == e.key
                        ? loadedItem.activeColor
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ))
            .toList(),
      ),
    ]);
  }
}
