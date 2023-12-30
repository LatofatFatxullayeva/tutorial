// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:flutter/material.dart';

class WButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;
  final double borderRadius;
  final Color color;
  const WButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.borderRadius = 0,
    this.color=AppColors.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.all(16),
        child: Text(
          text,
          style: Styles.getLabelStyle().copyWith(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
