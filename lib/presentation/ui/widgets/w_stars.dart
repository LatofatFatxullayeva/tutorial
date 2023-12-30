// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WStars extends StatelessWidget {
  final int mark;
  const WStars({
    Key? key,
    required this.mark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) => SvgPicture.asset(
          AppIcons.star,
          colorFilter: ColorFilter.mode(
            index <= mark - 1
                ? AppColors.reviewEnabledColor
                : AppColors.reviewDisabledColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
