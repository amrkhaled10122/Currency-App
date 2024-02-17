part of 'currency_bloc.dart';

@immutable
abstract class CurrencyState extends Equatable {}

class CurrencyInitial extends CurrencyState {
  @override
  List<Object?> get props => [];
}

class CurrencyLoading extends CurrencyState {
  @override
  List<Object?> get props => [];
}

class CurrencyLoaded extends CurrencyState {
  final List<CurrencyViewModel>? currency;

  CurrencyLoaded(
    this.currency,
  );

  @override
  List<Object?> get props => [];
}

class CurrencyError extends CurrencyState {
  @override
  List<Object?> get props => [];
}
