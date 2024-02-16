// import 'dart:async';

// import 'package:bloc/bloc.dart';

// part 'historical_data_event.dart';
// part 'historical_data_state.dart';

// class HistoricalDataBloc extends Bloc<HistoricalDataEvent, HistoricalDataState> {
//   final HistoricalDataRepository historicalDataRepository;

//   HistoricalDataBloc({required this.historicalDataRepository}) : super(HistoricalDataInitial());

//   @override
//   Stream<HistoricalDataState> mapEventToState(
//     HistoricalDataEvent event,
//   ) async* {
//     if (event is LoadHistoricalData) {
//       yield* _mapLoadHistoricalDataToState(event.baseCurrency, event.targetCurrency);
//     }
//   }

//   Stream<HistoricalDataState> _mapLoadHistoricalDataToState(String baseCurrency, String targetCurrency) async* {
//     try {
//       final List<HistoricalData> historicalData = await historicalDataRepository.fetchHistoricalData(
//         baseCurrency: baseCurrency,
//         targetCurrency: targetCurrency,
//       );
//       yield HistoricalDataLoadSuccess(historicalData: historicalData);
//     } catch (e) {
//       yield HistoricalDataLoadFailure(error: 'Failed to load historical data');
//     }
//   }
// }
