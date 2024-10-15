import 'package:ecommm/constants.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: MkasColor.white,
                padding: const EdgeInsets.all(20)),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: MkasColor.white,
                padding: const EdgeInsets.all(20)),
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: MkasColor.white,
                padding: const EdgeInsets.all(20)),
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
