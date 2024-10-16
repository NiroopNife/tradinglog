import 'package:hive/hive.dart';

part 'trade_model.g.dart';

@HiveType(typeId: 0)
class TradeModel extends HiveObject {
  @HiveField(0)
  final String symbol;

  @HiveField(1)
  final String? segment;

  @HiveField(2)
  final String? tradeType;

  @HiveField(3)
  final DateTime entryDateTime;

  @HiveField(4)
  final String? entryCondition;

  @HiveField(5)
  final String entryQuantity;

  @HiveField(6)
  final String entryPrice;

  @HiveField(7)
  final String? entryNote;

  @HiveField(8)
  final DateTime exitDateTime;

  @HiveField(9)
  final String? exitCondition;

  @HiveField(10)
  final String exitQuantity;

  @HiveField(11)
  final String exitPrice;

  @HiveField(12)
  final String? exitNote;

  @HiveField(13)
  final List<String>? images;

  TradeModel({
    required this.symbol,
    this.segment,
    this.tradeType,
    required this.entryDateTime,
    this.entryCondition,
    required this.entryQuantity,
    required this.entryPrice,
    this.entryNote,
    required this.exitDateTime,
    this.exitCondition,
    required this.exitQuantity,
    required this.exitPrice,
    this.exitNote,
    this.images,
  });
}
