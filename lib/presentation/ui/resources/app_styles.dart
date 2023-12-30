import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle getLogoTextStyle() => const TextStyle(
        fontSize: 38,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w800,
        fontFamily: 'MainFont',
      );

  static TextStyle getTextActionStyle() => const TextStyle(
        fontSize: 18,
        color: AppColors.primaryColor,
        fontFamily: 'MainFont',
        fontWeight: FontWeight.w700,
      );
  static TextStyle getOnBoardingTitle() => const TextStyle(
        fontSize: 26,
        color: AppColors.black,
        fontWeight: FontWeight.w700,
        fontFamily: 'MainFont',
      );
  static TextStyle getOnBoardingSubTitle() => const TextStyle(
        fontSize: 18,
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        height: 1.4,
        fontFamily: 'MainFont',
      );

  static TextStyle getLabelStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        fontFamily: 'MainFont',
      );

  static TextStyle getPriceStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: AppColors.primaryColor,
        fontFamily: 'MainFont',
      );
  static TextStyle getContentStyle() => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFAAAAAA),
        fontFamily: 'MainFont',
      );
}
