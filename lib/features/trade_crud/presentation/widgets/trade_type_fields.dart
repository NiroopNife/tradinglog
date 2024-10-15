import 'package:flutter/material.dart';
import 'package:trading_log/core/utils/constants/constants.dart';
import 'package:trading_log/data/models/menu_item.dart';

class TradeTypeFields extends StatelessWidget {
  const TradeTypeFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 1,
          child: DropdownMenu<MenuItem>(
            requestFocusOnTap: true,
            enableFilter: true,
            label: const Text(AppTexts.segment),
            onSelected: (MenuItem? menu) {},
            dropdownMenuEntries: AppTexts.segments
                .map<DropdownMenuEntry<MenuItem>>((MenuItem menu) {
              return DropdownMenuEntry<MenuItem>(
                value: menu,
                label: menu.label,
              );
            }).toList(),
          ),
        ),
        Expanded(
          flex: 1,
          child: DropdownMenu<MenuItem>(
            requestFocusOnTap: true,
            enableFilter: true,
            label: const Text(AppTexts.tradeType),
            onSelected: (MenuItem? menu) {},
            dropdownMenuEntries: AppTexts.typesOfTrade
                .map<DropdownMenuEntry<MenuItem>>((MenuItem menu) {
              return DropdownMenuEntry<MenuItem>(
                value: menu,
                label: menu.label,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
