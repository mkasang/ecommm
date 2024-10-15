import 'package:ecommm/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String text;
  const Description({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MkasColor.secondaryColor),
              alignment: Alignment.center,
              child: const Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MkasColor.white,
                ),
              ),
            ),
            const Text(
              "Specifications",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MkasColor.primaryColor,
              ),
            ),
            const Text(
              "Reviews",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MkasColor.primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
