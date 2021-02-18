import 'package:esraa/models/products.dart';
import 'package:esraa/screens/Home/components/product_container.dart';
import 'package:esraa/screens/ProductDetails/details_screen.dart';
import 'package:flutter/material.dart';

import 'package:esraa/constant.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final String id;

  ItemCard({
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final loadedItem = Provider.of<Products>(context).findById(id);

    return GestureDetector(
      child: ProductContainer(
        bgColor: loadedItem.bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    loadedItem.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: loadedItem.activeColor),
                  ),
                ),
                Icon(
                  Icons.format_quote_sharp,
                  color: loadedItem.activeColor,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$ ${loadedItem.price.toString()}',
                  style: TextStyle(
                    color: loadedItem.activeColor,
                  ),
                ),
                SizedBox(width: context.mobileWidth * 0.015),
                Text(
                  loadedItem.count,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Image.asset(
              loadedItem.imageURL,
              fit: BoxFit.contain,
            ),
            Container()
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              id: id,
            ),
          ),
        );
      },
    );
  }
}
