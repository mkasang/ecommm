import 'package:ecommm/constants.dart';
import 'package:ecommm/models/product.dart';
import 'package:ecommm/screens/home/widgets/category.dart';
import 'package:ecommm/screens/home/widgets/home_app_bar.dart';
import 'package:ecommm/screens/home/widgets/image_slider.dart';
import 'package:ecommm/screens/home/widgets/product_card.dart';
import 'package:ecommm/screens/home/widgets/search_bard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MkasColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // Custom Appbar
              const CustumAppBar(),
              const SizedBox(height: 20),
              //search bar
              const MkSearchBar(),
              const SizedBox(height: 20),
              //Slider
              ImageSlider(
                currentSlide: currentSlider,
                onchange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              //Categories
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For you",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MkasColor.primaryColor,
                    ),
                  )
                ],
              ),
              //Shopping Items
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: all.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: all[index]);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
