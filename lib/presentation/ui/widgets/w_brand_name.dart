import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:flutter/material.dart';

class WBrandName extends StatelessWidget {
  final double fontSize;
  const WBrandName({
    super.key,
    this.fontSize = 38,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Swip",
        children: [
          TextSpan(
            text: "wide",
            style: Styles.getLogoTextStyle().copyWith(
              color: AppColors.black,
              fontSize: fontSize,
            ),
          ),
        ],
        style: Styles.getLogoTextStyle().copyWith(fontSize: fontSize),
      ),
    );
  }
}
