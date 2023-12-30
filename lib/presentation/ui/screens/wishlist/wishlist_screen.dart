import 'package:e_commerce/presentation/ui/resources/app_icons.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:e_commerce/presentation/ui/screens/product/product_screen.dart';
import 'package:e_commerce/presentation/ui/widgets/w_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Wishlist Screen",
          style: Styles.getLabelStyle(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 1),
            child: Container(
              color: Color(0xFFDEDEDE),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: 280,
          ),
          children: List.generate(
            8,
            (index) => Stack(
              children: [
                WProductItem(
                  index: index,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductScreen(
                              index: index,
                            )));
                  },
                ),
                Positioned(
                  right: 16,
                  top: 16,
                  child: GestureDetector(
                    onTap: (){},
                    child: SvgPicture.asset(
                      AppIcons.wishlistFilled,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
