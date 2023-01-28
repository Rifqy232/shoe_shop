import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 0;
                });
              },
              child: Chip(
                backgroundColor: _selectedCategory == 0 ? blackColor : whiteColor,
                padding: const EdgeInsets.all(8),
                label: Text(
                  "All",
                  style: regularTextStyle.copyWith(
                    color: _selectedCategory == 0 ? whiteColor : inactiveColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 1;
                });
              },
              child: Chip(
                backgroundColor: _selectedCategory == 1 ? blackColor : whiteColor,
                padding: const EdgeInsets.all(8),
                avatar: ImageIcon(
                  color: _selectedCategory == 1 ? whiteColor : inactiveColor,
                  const AssetImage(
                    'assets/images/adidas.png',
                  ),
                ),
                label: Text(
                  "Adidas",
                  style: regularTextStyle.copyWith(
                    color: _selectedCategory == 1 ? whiteColor : inactiveColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 2;
                });
              },
              child: Chip(
                backgroundColor: _selectedCategory == 2 ? blackColor : whiteColor,
                padding: const EdgeInsets.all(8),
                avatar: ImageIcon(
                  color: _selectedCategory == 2 ? whiteColor : inactiveColor,
                  const AssetImage(
                    'assets/images/puma.png',
                  ),
                ),
                label: Text(
                  "Puma",
                  style: regularTextStyle.copyWith(
                    color: _selectedCategory == 2 ? whiteColor : inactiveColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 3;
                });
              },
              child: Chip(
                backgroundColor: _selectedCategory == 3 ? blackColor : whiteColor,
                padding: const EdgeInsets.all(8),
                avatar: ImageIcon(
                  color: _selectedCategory == 3 ? whiteColor : inactiveColor,
                  const AssetImage(
                    'assets/images/nike.png',
                  ),
                ),
                label: Text(
                  "Nike",
                  style: regularTextStyle.copyWith(
                    color: _selectedCategory == 3 ? whiteColor : inactiveColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 4;
                });
              },
              child: Chip(
                backgroundColor: _selectedCategory == 4 ? blackColor : whiteColor,
                padding: const EdgeInsets.all(8),
                avatar: ImageIcon(
                  color: _selectedCategory == 4 ? whiteColor : inactiveColor,
                  const AssetImage(
                    'assets/images/adidas.png',
                  ),
                ),
                label: Text(
                  "Adidas",
                  style: regularTextStyle.copyWith(
                    color: _selectedCategory == 4 ? whiteColor : inactiveColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
