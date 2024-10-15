import 'package:flutter/material.dart';
import 'package:trading_log/core/utils/constants/constants.dart';
import 'package:trading_log/core/widgets/custom_text_form_field.dart';
import 'package:trading_log/core/widgets/gap.dart';

class QuantityPriceField extends StatelessWidget {
  final TextEditingController quantityController;
  final TextEditingController priceController;
  final VoidCallback? onDeletePressed;

  const QuantityPriceField({
    super.key,
    required this.quantityController,
    required this.priceController,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 2,
          child: CustomTextFormField(
            controller: quantityController,
            labelText: AppTexts.quantity,
          ),
        ),
        const Gap(width: AppSizes.md),
        Expanded(
          flex: 2,
          child: CustomTextFormField(
            controller: quantityController,
            labelText: AppTexts.price,
            keyboardType: TextInputType.number,
          ),
        ),
        Expanded(
          flex: 1,
          child: Icon(
            Icons.delete,
            size: 35,
            color: AppColors.error.withOpacity(.7),
          ),
        ),
      ],
    );
  }
}
