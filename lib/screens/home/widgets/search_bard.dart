import 'package:ecommm/constants.dart';
import 'package:flutter/material.dart';

class MkSearchBar extends StatelessWidget {
  const MkSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MkasColor.contentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: MkasColor.unselectColor,
            size: 30,
          ),
          const SizedBox(width: 10),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: "search...",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: MkasColor.unselectColor,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                color: MkasColor.unselectColor,
              )),
        ],
      ),
    );
  }
}
