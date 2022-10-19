import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductCard extends StatelessWidget {
  final String img;
  final String title;
  final String points;
  final String howManySold;
  final String price;

  const ProductCard(
      {super.key,
      required this.img,
      required this.title,
      required this.points,
      required this.howManySold,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Text(title),
            Text("$points | Sold $howManySold"),
            Text("\$ $price"),
          ],
        ),
      ),
    );
  }
}
