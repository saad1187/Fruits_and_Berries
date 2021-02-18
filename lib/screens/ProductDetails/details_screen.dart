import 'package:flutter/material.dart';
import 'package:esraa/screens/ProductDetails/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String id;

  DetailsScreen({@required this.id});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(id: id),
      ),
    );
  }
}
