import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppinh_app/responsive/responsive.dart';
import 'package:shoppinh_app/screens/sections/categories.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> listImages = [
    'assets/brands_assets/nike.jpeg',
    'assets/brands_assets/puma.jpeg',
    'assets/brands_assets/adidas.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoppinh"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.settings_outlined))
        ],
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
                style: GoogleFonts.dancingScript(
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: isDesktop(context, 500)
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
            const Divider(),
            SizedBox(
              height: 50,
              child: Text(
                "Brands",
                style: GoogleFonts.dancingScript(
                  fontSize: 32,
                ),
              ),
            ),
            CarouselImages(
              listImages: listImages,
              height: 200,
              scaleFactor: 0.1,
              borderRadius: 30.0,
              cachedNetworkImage: true,
              verticalAlignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
