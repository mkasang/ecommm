import 'package:ecommm/constants.dart';
import 'package:ecommm/screens/home/widgets/home_app_bar.dart';
import 'package:ecommm/screens/home/widgets/image_slider.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
