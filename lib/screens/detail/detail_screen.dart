import 'package:ecommm/constants.dart';
import 'package:ecommm/models/product.dart';
import 'package:ecommm/screens/detail/widgets/detail_app_bar.dart';
import 'package:ecommm/screens/detail/widgets/image_slider.dart';
import 'package:ecommm/screens/detail/widgets/items_details.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  // int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MkasColor.contentColor,
      body: SafeArea(
          child: Column(
        children: [
          //back button share and favorite
          DetailAppBar(),

          MkImageSlider(
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
              image: widget.product.image),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: currentImage == index ? 15 : 8,
                height: 8,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: currentImage == index
                        ? MkasColor.primaryColor
                        : Colors.transparent,
                    border: Border.all(color: MkasColor.primaryColor)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: MkasColor.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.only(
                left: 20, right: 20, top: 20, bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Product name, price, rating and seller
                ItemsDetails(product: widget.product),
              ],
            ),
          )
        ],
      )),
    );
  }
}
