import 'package:ecommm/constants.dart';
import 'package:flutter/material.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: MkasColor.contentColor,
              padding: const EdgeInsets.all(20)),
          onPressed: () {},
          icon: Image.asset(
            "images/icon.png",
            height: 20,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: MkasColor.contentColor,
              padding: const EdgeInsets.all(20)),
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
