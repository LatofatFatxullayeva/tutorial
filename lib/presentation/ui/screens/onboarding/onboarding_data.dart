// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/presentation/ui/resources/app_images.dart';

class OnboardingData {
  final String title;
  final String subtitle;
  final String image;

  OnboardingData({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnboardingData> onboardingData = [
  OnboardingData(
    title: "Discover New Products",
    subtitle: """Many new products are discovered by 
people simply hapening upon them 
while being out and about in the
world.
            """,
    image: AppImages.onBoarding1,
  ),
  OnboardingData(
    title: "Earn Points For Shopping",
    subtitle: """The purpose of reward points is to provide
an incentive for customers to make 
repeat purchases.
            """,
    image: AppImages.onBoarding2,
  ),
  OnboardingData(
    title: "Get Fast Local Delivery",
    subtitle: """Wow Express offers cash on delivery
services and fast delivery services
so that your customers.
            """,
    image: AppImages.onBoarding3,
  ),
];
