import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:esraa/models/products.dart';
import 'package:esraa/screens/Home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final product = productData.items;

    return StaggeredGridView.countBuilder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      itemCount: product.length,
      itemBuilder: (ctx, i) => ItemCard(id: product[i].itemID),
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      // StaggeredTile.count(2, index.isEven ? 2.5 : 2.3),
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
    );
  }
}
