import 'package:hive/hive.dart';

part 'currency_view_model.g.dart';

@HiveType(typeId: 1)
class CurrencyViewModel {
  @HiveField(0)
  final String? symbol;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? symbolNative;
  @HiveField(3)
  final int? decimalDigits;

  @HiveField(4)
  final int? rounding;
  @HiveField(5)
  final String? code;
  @HiveField(6)
  final String? namePlural;
  @HiveField(7)
  final String? type;
  bool isSelected;

  CurrencyViewModel(
      {this.symbol,
      this.symbolNative,
      this.decimalDigits,
      this.rounding,
      this.namePlural,
      this.type,
      this.name,
      this.code,
      this.isSelected = false});
  factory CurrencyViewModel.fromJson(Map<String, dynamic> json) {
    return CurrencyViewModel(
      symbol: json['symbol'],
      name: json['name'],
      symbolNative: json['symbol_native'],
      decimalDigits: json['decimal_digits'],
      rounding: json['rounding'],
      code: json['code'],
      namePlural: json['name_plural'],
      type: json['type'],
    );
  }
}
