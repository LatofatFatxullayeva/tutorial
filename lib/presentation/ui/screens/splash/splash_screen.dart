import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_images.dart';
import 'package:e_commerce/presentation/ui/screens/onboarding/onboarding_screen.dart';
import 'package:e_commerce/presentation/ui/widgets/w_brand_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          Column(
            children: [
              SvgPicture.asset(
                AppImages.logoSvg,
                width: 140,
                height: 155,
              ),
              const SizedBox(height: 40),
              WBrandName(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getDots(5),
          )
        ],
      ),
    );
  }

  _getDots(int n) => List.generate(n, (index) {
        double s = 100 / n;
        double remainder = 100 - (index * s);
        double opacity = remainder / 100;
        return Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(opacity),
            shape: BoxShape.circle,
          ),
        );
      });
}
