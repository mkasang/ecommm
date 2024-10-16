import 'package:flutter/material.dart';

class MkImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const MkImageSlider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (ontext, index) {
          return Hero(
            tag: image,
            child: Image.asset(image),
          );
        },
      ),
    );
  }
}
