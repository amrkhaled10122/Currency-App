// historical_data_event.dart

part of 'historical_data_bloc.dart';

abstract class HistoricalDataEvent {}

class LoadHistoricalData extends HistoricalDataEvent {
  final String baseCurrency;
  final String targetCurrency;

  LoadHistoricalData({required this.baseCurrency, required this.targetCurrency});
}
