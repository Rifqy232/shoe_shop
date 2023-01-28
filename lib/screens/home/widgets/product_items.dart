import 'package:flutter/material.dart';

import '../../detail/detail_screen.dart';
import 'product_item.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
              ),
            );
          },
          child: const ProductItem(
            imageUrl: 'assets/images/shoe_item1.png',
            category: 'For Lifestyle',
            name: 'RS-X T3CH SPEC',
            description:
                'This edition features bold pops of color & amplified detailing.',
            price: 'Rp990.000',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
              ),
            );
          },
          child: const ProductItem(
            imageUrl: 'assets/images/shoe_item2.png',
            category: 'For Lifestyle',
            name: 'PL VGT Low Racer',
            description:
                'Feel & play your best in the PL VGT Low Racer Esports Shoes.',
            price: 'Rp900.000',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
              ),
            );
          },
          child: const ProductItem(
            imageUrl: 'assets/images/shoe_item1.png',
            category: 'For Lifestyle',
            name: 'Puma Superstar',
            description:
                'This edition features bold pops of color & amplified detailing.',
            price: 'Rp990.000',
          ),
        ),
      ],
    );
  }
}
