import 'package:hive_flutter/adapters.dart';
import 'package:trading_log/data/models/trade_model.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TradeModelAdapter());
  await Hive.openBox<TradeModel>('trades');
}