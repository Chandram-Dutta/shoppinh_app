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
            SizedBox(
              height: 50,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCircleTop(imageName: ,),
                  ProductCircleTop(imageName: ,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCircleTop extends StatelessWidget {
  const ProductCircleTop({Key? key,@required this.imageName}) : super(key: key);

  final String? imageName;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: 25,
        backgroundImage:AssetImage(imageName.toString()),
      ),
    );
  }
}
