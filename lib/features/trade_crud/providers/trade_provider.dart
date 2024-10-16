import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:trading_log/core/utils/constants/app_texts.dart';
import 'package:trading_log/data/models/trade_model.dart';

final tradesProvider = StateNotifierProvider<TradeNotifier, List<TradeModel>>(
  (ref) {
    return TradeNotifier();
  },
);

class TradeNotifier extends StateNotifier<List<TradeModel>> {
  TradeNotifier() : super([]) {
    _loadTrades();
  }

  Future<void> _loadTrades() async {
    final box = Hive.box<TradeModel>(AppTexts.tradesBox);
    state = box.values.toList();
  }

  Future<void> addTrade(TradeModel trade) async {
    final box = Hive.box<TradeModel>(AppTexts.tradesBox);
    await box.add(trade);
    state = [...state, trade];
  }

  Future<void> updateTrade(TradeModel trade) async {
    await trade.save();
    state = [...state];
  }

  Future<void> deleteTrade(TradeModel trade) async {
    await trade.delete();
    state = state.where((i) => i.key != trade.key).toList();
  }
}
