import 'dart:ui';

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
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
              isDesktop(context, 1000)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BrandsImageRow(
                          listImages: listImages,
                          no: 0,
                          brand: "Nike",
                        ),
                        BrandsImageRow(
                          listImages: listImages,
                          no: 1,
                          brand: "Puma",
                        ),
                        BrandsImageRow(
                          listImages: listImages,
                          no: 2,
                          brand: "Adidas",
                        )
                      ],
                    )
                  : CarouselImages(
                      listImages: listImages,
                      height: 300,
                      scaleFactor: 0.1,
                      borderRadius: 30.0,
                      cachedNetworkImage: true,
                      verticalAlignment: Alignment.center,
                    ),
              const SizedBox(
                height: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BrandsImageRow extends StatelessWidget {
  const BrandsImageRow({
    Key? key,
    required this.listImages,
    required this.no,
    required this.brand,
  }) : super(key: key);

  final List<String> listImages;
  final int no;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                listImages[no],
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                brand,
                style: GoogleFonts.montserrat(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
