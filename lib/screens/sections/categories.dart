import 'package:flutter/material.dart';

List<Widget> categoriesItem = const [
  ProductCircleTop(
    imageName: "assets/product_circle_top_assets/formalshoes.jpg",
    typeName: "Formal",
  ),
  ProductCircleTop(
    imageName: "assets/product_circle_top_assets/slippers.jpeg",
    typeName: "Slippers",
  ),
  ProductCircleTop(
    imageName: "assets/product_circle_top_assets/sportsshoes.jpeg",
    typeName: "Sport Shoes",
  ),
  ProductCircleTop(
    imageName: "assets/product_circle_top_assets/highheels.jpeg",
    typeName: "High Heels",
  ),
  ProductCircleTop(
    imageName: "assets/product_circle_top_assets/crocs.jpg",
    typeName: "Crocs",
  ),
];

class ProductCircleTop extends StatelessWidget {
  const ProductCircleTop(
      {Key? key, @required this.imageName, @required this.typeName})
      : super(key: key);

  final String? imageName;

  final String? typeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageName.toString()),
          ),
          Text(typeName.toString())
        ],
      ),
    );
  }
}
