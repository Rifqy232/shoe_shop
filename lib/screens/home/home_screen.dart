import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/carousel_widget.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/custom_bottom_navbar.dart';
import 'widgets/select_category.dart';
import 'widgets/product_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                children: const [
                  CarouselWidget(),
                  SelectCategory(),
                  ProductItems(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    );
  }
}
