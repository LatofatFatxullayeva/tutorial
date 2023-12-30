import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_icons.dart';
import 'package:e_commerce/presentation/ui/screens/cart/cart_screen.dart';
import 'package:e_commerce/presentation/ui/screens/home/home_screen.dart';
import 'package:e_commerce/presentation/ui/screens/profile/profile_screen.dart';
import 'package:e_commerce/presentation/ui/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: currentTabIndex,
    );
  }

  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          HomeScreen(),
          WishlistScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 94,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              spreadRadius: 3,
              blurRadius: 7,
            ),
          ],
        ),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          tabs: [
            SvgPicture.asset(
              currentTabIndex == 0 ? AppIcons.homeFilled : AppIcons.home,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                currentTabIndex == 0
                    ? AppColors.primaryColor
                    : AppColors.inActiveTabColor,
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              currentTabIndex == 1
                  ? AppIcons.wishlistFilled
                  : AppIcons.wishlist,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                currentTabIndex == 1
                    ? AppColors.primaryColor
                    : AppColors.inActiveTabColor,
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              currentTabIndex == 2 ? AppIcons.cartFilled : AppIcons.cart,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                currentTabIndex == 2
                    ? AppColors.primaryColor
                    : AppColors.inActiveTabColor,
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              currentTabIndex == 3 ? AppIcons.profileFilled : AppIcons.profile,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                currentTabIndex == 3
                    ? AppColors.primaryColor
                    : AppColors.inActiveTabColor,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
