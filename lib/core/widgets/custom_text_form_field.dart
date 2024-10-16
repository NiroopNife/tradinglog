import 'package:flutter/material.dart';

import 'gap.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final FormFieldValidator<String?>? validator;
  final bool enabled;
  final bool readOnly;
  final String? suggestionText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.minLines = 1,
    this.maxLines,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.validator,
    this.enabled = true,
    this.readOnly = false,
    this.suggestionText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          minLines: minLines,
          maxLines: maxLines,
          controller: controller,
          style: const TextTheme().bodySmall,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon != null
                ? IconButton(onPressed: onSuffixIconPressed, icon: suffixIcon!)
                : null,
          ),
          validator: validator ?? (value) => null,
          enabled: enabled,
          readOnly: readOnly,
        ),
        const Gap(height: 5),
        if (suggestionText != null)
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              suggestionText!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}
