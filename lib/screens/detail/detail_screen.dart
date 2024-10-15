import 'package:ecommm/constants.dart';
import 'package:ecommm/screens/detail/detail_app_bar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MkasColor.contentColor,
      body: SafeArea(
          child: Column(
        children: [
          //back button share and favorite
          DetailAppBar(),
        ],
      )),
    );
  }
}
