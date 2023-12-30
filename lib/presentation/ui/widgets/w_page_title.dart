// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/presentation/ui/resources/app_styles.dart';
import 'package:flutter/material.dart';

class WPageTitle extends StatelessWidget {
  final String text;
  const WPageTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.getLabelStyle().copyWith(fontSize: 18),
    );
  }
}
