// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:e_commerce/presentation/ui/widgets/w_stars.dart';

// ignore: must_be_immutable
class WProductItem extends StatelessWidget {
  GestureTapCallback onTap;
  final int index;
  WProductItem({
    Key? key,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFFF7F7F7),
            ),
            child: Hero(
              tag: "product_$index",
              child: Image.network(
                'https://m.media-amazon.com/images/I/61ccxP1g8HL._AC_UF894,1000_QL80_.jpg',
                height: 150,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const WStars(mark: 3),
          const SizedBox(height: 8),
          Text(
            "Smart Watches",
            style: Styles.getLabelStyle(),
          ),
          const SizedBox(height: 6),
          Text(
            "\$120.00",
            style: Styles.getPriceStyle(),
          ),
        ],
      ),
    );
  }
}
