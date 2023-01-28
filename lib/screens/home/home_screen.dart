import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/select_category.dart';
import 'widgets/product_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: const [
            CustomAppBar(),
            CarouselWidget(),
            SelectCategory(),
            ProductItems(),
          ],
        ),
      ),
    );
  }
}