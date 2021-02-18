import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String itemID, title, description, count, imageURL;
  final double price;
  final Color bgColor, activeColor, colour;
  final List<String> imgList;
  bool isAdded;

  Product({
    this.colour,
    this.itemID,
    this.title,
    this.price,
    this.count,
    this.imageURL,
    this.bgColor,
    this.activeColor,
    this.description,
    this.isAdded = false,
    this.imgList,
  });

  void addTo() {
    isAdded = !isAdded;
  }
}
