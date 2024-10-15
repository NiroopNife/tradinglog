import 'package:flutter/material.dart';
import 'package:trading_log/core/utils/constants/app_colors.dart';
import 'package:trading_log/core/utils/constants/app_sizes.dart';
import 'package:trading_log/core/utils/constants/app_texts.dart';

class AddImage extends StatelessWidget {
  final String imageName;
  const AddImage({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ImageButton(imageName: imageName),
        ImageButton(imageName: imageName),
      ],
    );
  }
}

class ImageButton extends StatelessWidget {
  final String imageName;

  const ImageButton({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(AppSizes.sm),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.accent,
            width: AppSizes.borderWidth,
          ),
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              child: Image.asset(
                imageName,
                fit: BoxFit.cover,
              ),
            ),
            const Text(AppTexts.addImage)
          ],
        ),
      ),
    );
  }
}
