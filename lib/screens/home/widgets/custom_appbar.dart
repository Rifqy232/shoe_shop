import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                style: regularTextStyle.copyWith(
                  color: blackColor,
                ),
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: "Lifestyle Shoe",
                  border: InputBorder.none,
                  hintStyle: regularTextStyle.copyWith(
                    color: inactiveColor,
                  ),
                  prefixIcon: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: ImageIcon(
                      color: blackColor,
                      const AssetImage(
                        'assets/icons/ic_search.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {
                  print("Bag pressed");
                },
                icon: const ImageIcon(
                  AssetImage(
                    'assets/icons/ic_bag.png',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {
                  print("notification pressed");
                },
                icon: const ImageIcon(
                  AssetImage(
                    'assets/icons/ic_notification.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
