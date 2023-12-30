// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:e_commerce/presentation/ui/resources/app_colors.dart';
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';

class WCategory extends StatelessWidget {
  final String text;
  final String icon;
  const WCategory({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.colorE5E5E5,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: Image.asset(icon),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: Styles.getLabelStyle(),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
