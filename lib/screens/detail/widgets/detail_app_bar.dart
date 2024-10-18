import 'package:ecommm/constants.dart';
import 'package:ecommm/models/product.dart';
import 'package:ecommm/providers/favorite_provider.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
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
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_outline,
              color: MkasColor.primaryColor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
