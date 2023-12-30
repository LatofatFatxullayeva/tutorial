// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/presentation/ui/resources/app_images.dart';

class CategoryData {
  final String text;
  final String icon;

  CategoryData({
    required this.text,
    required this.icon,
  });
}

List<CategoryData> categoryData = [
  CategoryData(
    text: "Clothes",
    icon: AppImages.clothes,
  ),
  CategoryData(
    text: "Laptop",
    icon: AppImages.laptop,
  ),
  CategoryData(
    text: "Bag",
    icon: AppImages.bag,
  ),
  CategoryData(
    text: "Shoes",
    icon: AppImages.shoes,
  ),
];
