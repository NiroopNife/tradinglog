import 'package:flutter/material.dart';
import 'package:trading_log/core/utils/utils.dart';
import 'package:trading_log/core/widgets/widgets.dart';
import 'package:trading_log/data/models/menu_item.dart';
import 'package:trading_log/features/trade_crud/presentation/widgets/widgets.dart';

class EntryExitCard extends StatelessWidget {
  final Enum type;
  final TextEditingController dateTimeController;
  final TextEditingController quantityController;
  final TextEditingController priceController;
  final TextEditingController noteController;

  const EntryExitCard({
    super.key,
    required this.type,
    required this.dateTimeController,
    required this.quantityController,
    required this.priceController,
    required this.noteController,
  });

  @override
  Widget build(BuildContext context) {
    List<MenuItem> conditions = type == TradeType.entry
        ? AppTexts.entryConditions
        : AppTexts.exitConditions;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          controller: dateTimeController,
          hintText:
              type == TradeType.entry ? AppTexts.addEntry : AppTexts.addExit,
          validator: (value) {
            return Validators.validateField(value);
          },
          suffixIcon: const Icon(Icons.date_range),
          onSuffixIconPressed: () async {
            DateTime? selectedDateTime =
                await DeviceUtils.showDateTimePicker(context: context);
            if (selectedDateTime != null) {
              dateTimeController.text =
                  Formatter.formatDateTime(selectedDateTime);
            }
          },
          readOnly: true,
        ),
        const Gap(height: AppSizes.md),
        DropdownMenu<MenuItem>(
          requestFocusOnTap: true,
          enableFilter: true,
          width: AppHelper.screenWidth(context) * .93,
          hintText: type == TradeType.entry
              ? AppTexts.entryCondition
              : AppTexts.exitCondition,
          onSelected: (MenuItem? menu) {},
          dropdownMenuEntries:
              conditions.map<DropdownMenuEntry<MenuItem>>((MenuItem menu) {
            return DropdownMenuEntry<MenuItem>(
              value: menu,
              label: menu.label,
            );
          }).toList(),
        ),
        const Gap(height: AppSizes.md),
        QuantityPriceField(
          quantityController: quantityController,
          priceController: priceController,
          onDeletePressed: () {},
        ),
        const Gap(height: AppSizes.md),
        CustomTextFormField(
          controller: noteController,
          hintText:
              type == TradeType.entry ? AppTexts.entryNote : AppTexts.exitNote,
        ),
      ],
    );
  }
}
