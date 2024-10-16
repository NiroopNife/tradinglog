import 'package:hive_flutter/adapters.dart';
import 'package:trading_log/core/utils/constants/app_texts.dart';
import 'package:trading_log/data/models/trade_model.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TradeModelAdapter());
  await Hive.openBox(AppTexts.tradesBox);
}