import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 70,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCircleTop(
                      imageName: "assets/product_circle_top_assets/photo1.jpeg",
                    ),
                    ProductCircleTop(
                      imageName: "assets/product_circle_top_assets/photo2.jpeg",
                    ),
                    ProductCircleTop(
                      imageName: "assets/product_circle_top_assets/photo3.jpeg",
                    ),
                    ProductCircleTop(
                      imageName: "assets/product_circle_top_assets/photo2.jpeg",
                    ),
                    ProductCircleTop(
                      imageName: "assets/product_circle_top_assets/photo1.jpeg",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCircleTop extends StatelessWidget {
  const ProductCircleTop({Key? key, @required this.imageName})
      : super(key: key);

  final String? imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(imageName.toString()),
      ),
    );
  }
}
