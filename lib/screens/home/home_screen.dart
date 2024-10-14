import 'package:ecommm/constants.dart';
import 'package:ecommm/screens/home/widgets/home_app_bar.dart';
import 'package:ecommm/screens/home/widgets/search_bard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MkasColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              // Custom Appbar
              CustumAppBar(),
              SizedBox(height: 20),
              //search bar
              MkSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
