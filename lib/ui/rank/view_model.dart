import 'package:example/model/results/results.dart';
import 'package:example/provider/results/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
abstract class RankViewModelState with _$RankViewModelState {
  const factory RankViewModelState({
    required bool isLoading,
    required String error,
    required List<RaceResult> results,
    required String category,
    required String year,
    required String round,
  }) = _RankViewModelState;
}

@riverpod
class RankViewModel extends _$RankViewModel {
  @override
  RankViewModelState build() {
    return const RankViewModelState(
      isLoading: false,
      error: '',
      results: [],
      category: 'gt500',
      year: '2025',
      round: 'total',
    );
  }

  Future<void> fetch({String? category, String? year, String? round}) async {
    final nextCategory = category ?? state.category;
    final nextYear = year ?? state.year;
    final nextRound = round ?? state.round;

    state = state.copyWith(
      isLoading: true,
      category: nextCategory,
      year: nextYear,
      round: nextRound,
    );

    try {
      final response = await ref.read(
        superGTResultsDataProvider(
          category: nextCategory,
          year: nextYear,
          round: nextRound,
        ).future,
      );
      state = state.copyWith(
        isLoading: false,
        results: response.results,
        error: '',
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
