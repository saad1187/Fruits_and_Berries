import 'package:flutter/material.dart';

import 'package:esraa/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      itemID: '01',
      title: 'Strawberries',
      price: 8.49,
      count: 'for 1kg',
      imageURL: 'images/Strawberries.png',
      bgColor: Color(0xFFFFE3E5),
      activeColor: Color(0xFFEFAAAF),
      description:
          'Strawberries are native to the temperate regions of the Northern Hemisphere, and cultivated varieties are widely grown throughout the world. The fruits are rich in vitamin C and are commonly eaten fresh as a dessert fruit, are used as a pastry or pie filling, and may be preserved in many ways.',
      imgList: [
        'images/Strawberries.png',
        'images/Strawberries.png',
        'images/Strawberries.png',
      ],
    ),
    Product(
      itemID: '02',
      title: 'Pineapple',
      price: 7.99,
      count: 'each',
      imageURL: 'images/Pineapple.png',
      bgColor: Color(0xFFFFFBD8),
      activeColor: Color(0xFFFAAB46),
      description:
          'Pineapple, Ananas comosus, is an herbaceous biennial or perennial plant in the family Bromeliaceae grown for its edible fruit. The pineapple plant has a short stout stem and a rosette of sword-shaped leaves with needle-like tips.',
      imgList: [
        'images/Pineapple.png',
        'images/Pineapple.png',
        'images/Pineapple.png',
      ],
    ),
    Product(
      itemID: '03',
      title: 'Blueberries',
      price: 6.49,
      count: 'for 1kg',
      imageURL: 'images/Blueberries.png',
      bgColor: Color(0xFFE4E4FE),
      activeColor: Color(0xFF3D597E),
      colour: Color(0xFF438216),
      description:
          'Blueberry is a crown forming, woody, perennial shrub in the family Ericaceae grown for its fruits, or berries, of the same name. The blueberry plant possesses oval or elliptical leaves which grow alternately on the stems.',
      imgList: [
        'images/Blueberries.png',
        'images/Blueberries.png',
        'images/Blueberries.png',
      ],
    ),
    Product(
      itemID: '04',
      title: 'Dragon Fruits',
      price: 1.36,
      count: 'each',
      imageURL: 'images/DragonFruites.png',
      bgColor: Color(0xFFFFEEFE),
      activeColor: Color(0xFFEAB2E3),
      description:
          'Dragon fruit, also known as pitaya or the strawberry pear, is a beautiful tropical fruit that is sweet and crunchy. The plant the fruit comes from is actually a type of cactus of the genus Hylocereus, which includes about 20 different species. ',
      imgList: [
        'images/DragonFruites.png',
        'images/DragonFruites.png',
        'images/DragonFruites.png',
      ],
    ),
    Product(
      itemID: '05',
      title: 'Lychee',
      price: 5.99,
      count: 'for 1kg',
      imageURL: 'images/Lychee.png',
      bgColor: Color(0xFFD8FFD0),
      activeColor: Color(0xFF6FB869),
      colour: Color(0xFFE28077),
      description:
          'A lychee is a rare sub tropical fruit originating in South China where the lychee is very important in their culture and is famed as "the King of Fruits". The lychee fruit is about 1½ to 2 inches in size, oval to rounded heart shaped and the bumpy skin is red in color. Once you peel the skin off, the crisp juicy flesh of a lychee fruit is white or pinkish, translucent and glossy like the consistency of a grape, but the taste is sweeter.',
      imgList: [
        'images/Lychee.png',
        'images/Lychee.png',
        'images/Lychee.png',
      ],
    ),
    Product(
      itemID: '06',
      title: 'Mango',
      price: 2.05,
      count: 'each',
      imageURL: 'images/Mango.png',
      bgColor: Color(0xFFFFE08E),
      activeColor: Color(0xFFFEB25E),
      colour: Color(0xFF88A04C),
      description:
          'Mango, Mangifera indica, is an evergreen tree in the family Anacardiaceae grown for its edible fruit. The mango tree is erect and branching with a thick trunk and broad, rounded canopy. The leaves of the tree are are shiny and dark green. They are either elliptical or lanceolate with long petioles and a leathery texture.',
      imgList: [
        'images/Mango.png',
        'images/Mango.png',
        'images/Mango.png',
      ],
    ),

    // more
    Product(
      itemID: '07',
      title: 'Strawberries',
      price: 8.49,
      count: 'for 1kg',
      imageURL: 'images/Strawberries.png',
      bgColor: Color(0xFFFFE3E5),
      activeColor: Color(0xFFE6686C),
      description:
          'Strawberries are native to the temperate regions of the Northern Hemisphere, and cultivated varieties are widely grown throughout the world. The fruits are rich in vitamin C and are commonly eaten fresh as a dessert fruit, are used as a pastry or pie filling, and may be preserved in many ways.',
      imgList: [
        'images/Strawberries.png',
        'images/Strawberries.png',
        'images/Strawberries.png',
      ],
    ),

    Product(
      itemID: '08',
      title: 'Pineapple',
      price: 7.99,
      count: 'each',
      imageURL: 'images/Pineapple.png',
      bgColor: Color(0xFFFFFBD8),
      activeColor: Color(0xFFF5D894),
      description:
          'Pineapple, Ananas comosus, is an herbaceous biennial or perennial plant in the family Bromeliaceae grown for its edible fruit. The pineapple plant has a short stout stem and a rosette of sword-shaped leaves with needle-like tips.',
      imgList: [
        'images/Pineapple.png',
        'images/Pineapple.png',
        'images/Pineapple.png',
      ],
    ),
    Product(
      itemID: '09',
      title: 'Blueberries',
      price: 6.49,
      count: 'for 1kg',
      imageURL: 'images/Blueberries.png',
      bgColor: Color(0xFFE4E4FE),
      activeColor: Color(0xFF3D597E),
      description:
          'Blueberry is a crown forming, woody, perennial shrub in the family Ericaceae grown for its fruits, or berries, of the same name. The blueberry plant possesses oval or elliptical leaves which grow alternately on the stems. The stems, or twigs, are yellow/green in color and turn reddish in winter.',
      imgList: [
        'images/Blueberries.png',
        'images/Blueberries.png',
        'images/Blueberries.png',
      ],
    ),
    Product(
      itemID: '010',
      title: 'Dragon Fruits',
      price: 1.36,
      count: 'each',
      imageURL: 'images/DragonFruites.png',
      bgColor: Color(0xFFFFEEFE),
      activeColor: Color(0xFFEAB2E3),
      description:
          'Dragon fruit, also known as pitaya or the strawberry pear, is a beautiful tropical fruit that is sweet and crunchy. The plant the fruit comes from is actually a type of cactus of the genus Hylocereus, which includes about 20 different species. ',
      imgList: [
        'images/DragonFruites.png',
        'images/DragonFruites.png',
        'images/DragonFruites.png',
      ],
    ),
    Product(
      itemID: '011',
      title: 'Mango',
      price: 2.05,
      count: 'each',
      imageURL: 'images/Mango.png',
      bgColor: Color(0xFFFFE08E),
      activeColor: Color(0xFFFF6321),
      description:
          'Mango, Mangifera indica, is an evergreen tree in the family Anacardiaceae grown for its edible fruit. The mango tree is erect and branching with a thick trunk and broad, rounded canopy. The leaves of the tree are are shiny and dark green.',
      imgList: [
        'images/Mango.png',
        'images/Mango.png',
        'images/Mango.png',
      ],
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((item) => item.itemID == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  void updateAdd(Product product) {
    product.addTo();
    notifyListeners();
  }
}
