// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TradeModelAdapter extends TypeAdapter<TradeModel> {
  @override
  final int typeId = 0;

  @override
  TradeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TradeModel(
      symbol: fields[0] as String,
      segment: fields[1] as String?,
      tradeType: fields[2] as String?,
      entryDateTime: fields[3] as DateTime,
      entryCondition: fields[4] as String?,
      entryQuantity: fields[5] as String,
      entryPrice: fields[6] as String,
      entryNote: fields[7] as String?,
      exitDateTime: fields[8] as DateTime,
      exitCondition: fields[9] as String?,
      exitQuantity: fields[10] as String,
      exitPrice: fields[11] as String,
      exitNote: fields[12] as String?,
      images: (fields[13] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TradeModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.symbol)
      ..writeByte(1)
      ..write(obj.segment)
      ..writeByte(2)
      ..write(obj.tradeType)
      ..writeByte(3)
      ..write(obj.entryDateTime)
      ..writeByte(4)
      ..write(obj.entryCondition)
      ..writeByte(5)
      ..write(obj.entryQuantity)
      ..writeByte(6)
      ..write(obj.entryPrice)
      ..writeByte(7)
      ..write(obj.entryNote)
      ..writeByte(8)
      ..write(obj.exitDateTime)
      ..writeByte(9)
      ..write(obj.exitCondition)
      ..writeByte(10)
      ..write(obj.exitQuantity)
      ..writeByte(11)
      ..write(obj.exitPrice)
      ..writeByte(12)
      ..write(obj.exitNote)
      ..writeByte(13)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TradeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
