import 'package:flutter/material.dart';

class VerticalTexts extends StatelessWidget {

  final String title;
  final String subTitle;

  const VerticalTexts({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text(subTitle),
      ],
    );
  }
}