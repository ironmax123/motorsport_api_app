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
    required String raceType,
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
      raceType: 'SuperGT',
      category: 'gt500',
      year: '2026',
      round: 'total',
    );
  }

  Future<void> fetch({
    String? raceType,
    String? category,
    String? year,
    String? round,
  }) async {
    final nextRaceType = raceType ?? state.raceType;
    final nextCategory = nextRaceType == 'F1'
        ? 'f1'
        : category ?? (state.category == 'f1' ? 'gt500' : state.category);
    final nextYear = year ?? _normalizeYear(nextRaceType, state.year);
    final nextRound = round ?? state.round;

    state = state.copyWith(
      isLoading: true,
      raceType: nextRaceType,
      category: nextCategory,
      year: nextYear,
      round: nextRound,
    );

    try {
      final response = await ref.read(
        raceResultsDataProvider(
          raceType: nextRaceType,
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

  String _normalizeYear(String raceType, String year) {
    if (raceType != 'F1') return year;
    return year == '2025' || year == '2026' ? year : '2026';
  }
}
