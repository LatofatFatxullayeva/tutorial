import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:e_commerce/presentation/ui/screens/login/login_screen.dart';
import 'package:e_commerce/presentation/ui/screens/onboarding/onboarding_data.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController(initialPage: 0);
  int page = 0;
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          const SafeArea(child: SizedBox()),
          GestureDetector(
            onTap: () {
              if (page != onboardingData.length - 1) {
                setState(() {
                  page++;
                  controller.animateToPage(page,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                });
              } else {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    // ignore: prefer_const_constructors
                    builder: (_) => LoginScreen(),
                  ),
                );
              }
            },
            child: Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(
                right: 30.0,
                top: 30.0,
              ),
              child: Text(
                "Next",
                style: Styles.getTextActionStyle(),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (int index) {
                setState(() {
                  page = index;
                });
              },
              physics: const BouncingScrollPhysics(),
              children: List.generate(
                onboardingData.length,
                (index) => _getPage(onboardingData[index]),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getDots(onboardingData.length, page),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  _getPage(OnboardingData data) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              data.image,
              width: width * 0.8,
            ),
            _getSpace(),
            Text(
              data.title,
              style: Styles.getOnBoardingTitle(),
            ),
            const SizedBox(height: 24),
            Text(
              data.subtitle,
              textAlign: TextAlign.center,
              style: Styles.getOnBoardingSubTitle(),
            ),
          ],
        ),
      );

  _getSpace() => SizedBox(height: height * 0.08);

  _getDots(int n, int activeIndex) => List.generate(n, (index) {
        return Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: index == activeIndex
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
        );
      });
}
