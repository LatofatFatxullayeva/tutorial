import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_icons.dart';
import 'package:e_commerce/presentation/ui/resources/app_images.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:e_commerce/presentation/ui/screens/home/category_data.dart';
import 'package:e_commerce/presentation/ui/screens/product/product_screen.dart';
import 'package:e_commerce/presentation/ui/widgets/w_brand_name.dart';
import 'package:e_commerce/presentation/ui/widgets/w_category.dart';
import 'package:e_commerce/presentation/ui/widgets/w_page_title.dart';
import 'package:e_commerce/presentation/ui/widgets/w_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: _getDrawer(),
      backgroundColor: Colors.white,
      appBar: _getAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _getSearchBox(),
            const SizedBox(height: 34),
            const WPageTitle(text: "Shop by Category"),
            const SizedBox(height: 22),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  categoryData.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                        right: categoryData.length - 1 != index ? 30.0 : 0),
                    child: WCategory(
                      icon: categoryData[index].icon,
                      text: categoryData[index].text,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const WPageTitle(text: "Newest Arrival"),
            const SizedBox(height: 22),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  mainAxisExtent: 280,
                ),
                children: List.generate(
                  8,
                  (index) => WProductItem(
                    index: index,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ProductScreen(
                                index: index,
                              )));
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      
     
    );
  }

  _getMenuItem({
    required String text,
    required String icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          child: SvgPicture.asset(
            icon,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: Text(
          text,
          style: Styles.getLabelStyle(),
        ),
      ),
    );
  }

  _getDrawer() => Drawer(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                SvgPicture.asset(
                  AppImages.logoSvg,
                  width: 89,
                ),
                const SizedBox(height: 28),
                const WBrandName(
                  fontSize: 28,
                ),
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Divider(
                    thickness: 1,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
            _getMenuItem(text: "Rewards", icon: AppIcons.gift),
            _getMenuItem(text: "Help", icon: AppIcons.help),
            _getMenuItem(text: "Contact Us", icon: AppIcons.quotationMark),
            _getMenuItem(text: "Privacy Policy", icon: AppIcons.privacy),
            _getMenuItem(text: "Logout", icon: AppIcons.logout),
          ],
        ),
      );

  _getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppIcons.menu,
                ),
              ),
            ),
            const WBrandName(
              fontSize: 28,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?s=612x612&w=0&k=20&c=d8W_C2D-2rXlnkyl8EirpHGf-GpM62gBjpDoNryy98U="),
            ),
          ],
        ),
      ),
    );
  }

  _getSearchBox() => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 5,
                spreadRadius: 1,
              )
            ]),
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
              child: SvgPicture.asset(AppIcons.search),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            hintText: 'Search "Smartphone"',
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.lightGray,
              fontFamily: 'MainFont',
            ),
            suffixIcon: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
              ),
              child: SvgPicture.asset(AppIcons.scan),
            ),
          ),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            fontFamily: 'MainFont',
          ),
          textInputAction: TextInputAction.search,
        ),
      );
}
