import 'package:flutter/material.dart';
import 'package:trading_log/core/utils/utils.dart';
import 'package:trading_log/core/widgets/widgets.dart';
import 'package:trading_log/data/models/trade_model.dart';

class LogCard extends StatelessWidget {
  final TradeModel trade;

  const LogCard({
    super.key,
    required this.trade,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        double.parse(trade.entryPrice) >
                                double.parse(trade.exitPrice)
                            ? const Icon(
                                Icons.arrow_upward,
                                color: AppColors.success,
                              )
                            : const Icon(
                                Icons.arrow_downward,
                                color: AppColors.error,
                              ),
                        const Gap(width: 10),
                        Text(trade.symbol)
                      ],
                    ),
                    Text("${AppTexts.invested} : ${AppHelper.totalInvested(trade.entryQuantity, trade.entryPrice)}")
                  ],
                ),
                Column(
                  children: [
                    Text(trade.entryQuantity),
                    Text(Formatter.formatDateTime(trade.entryDateTime))
                  ],
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VerticalTexts(title: trade.entryQuantity, subTitle: AppTexts.entryQuantity),
                VerticalTexts(title: trade.entryPrice, subTitle: AppTexts.avgPrice),
                VerticalTexts(title: trade.exitQuantity, subTitle: AppTexts.exitQuantity),
                VerticalTexts(title: trade.exitPrice, subTitle: AppTexts.avgPrice),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
