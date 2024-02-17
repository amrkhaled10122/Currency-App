import 'package:bloc_test/bloc_test.dart';
import 'package:coin_currency/data/models/view_model/currency_model/currency_view_model.dart';
import 'package:coin_currency/domain/repositories/server_repository.dart';
import 'package:coin_currency/domain/services/hive/index.dart';
import 'package:coin_currency/logic/blocs/currency_bloc/currency_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';

class MockServerRepository extends Mock implements ServerRepository {
  @override
  Future<List<CurrencyViewModel>> getCurrencies() async {
    // Replace this with your test data
    return [CurrencyViewModel(/* your test data here */)];
  }
}

class MockHiveService extends Mock implements HiveService {}

void main() {
  GetIt.I.registerSingleton<HiveService>(MockHiveService()); // Register MockHiveService

  group('CurrencyBloc', () {
    late CurrencyBloc currencyBloc;
    late MockServerRepository mockServerRepository;

    setUp(() {
      mockServerRepository = MockServerRepository();
      currencyBloc = CurrencyBloc();
    });

    tearDown(() {
      currencyBloc.close();
    });

    blocTest(
      'emits [CurrencyLoading, CurrencyLoaded] when CurrencyLoadEvent is added successfully',
      build: () {
        when(mockServerRepository.getCurrencies())
            .thenAnswer((_) async => [CurrencyViewModel(/* your test data here */)]);
        return currencyBloc;
      },
      act: (CurrencyBloc bloc) async {
        bloc.add(CurrencyLoadEvent());
        await untilCalled(mockServerRepository.getCurrencies());
      },
      expect: () => [
        isA<CurrencyLoading>(),
        isA<CurrencyLoaded>(),
      ],
    );
  });
}
