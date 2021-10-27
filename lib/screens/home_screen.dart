import 'package:flutter/material.dart';
import 'package:shoppinh_app/responsive/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<Widget> categoriesItem = const [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoppinh"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: isDesktop(context, 400)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: categoriesItem,
                      )
                    : ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: categoriesItem),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
