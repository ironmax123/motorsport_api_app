import 'package:example/model/schedule/schedule.dart';
import 'package:example/provider/schedule/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_moidel.freezed.dart';
part 'view_moidel.g.dart';

@freezed
abstract class HomeViewModelState with _$HomeViewModelState {
  const factory HomeViewModelState({
    required bool isLoading,
    required String error,
    required List<ScheduleEntry> superGtSchedule,
    required List<ScheduleEntry> f1Schedule,
  }) = _HomeViewModelState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeViewModelState build() {
    final superGtSchedule = ref.watch(superGTScheduleProvider);
    final f1Schedule = ref.watch(f1ScheduleProvider);

    return HomeViewModelState(
      isLoading: superGtSchedule.isLoading,
      error: superGtSchedule.error?.toString() ?? '',
      superGtSchedule: superGtSchedule.value?.schedule ?? [],
      f1Schedule: f1Schedule.value?.schedule ?? [],
    );
  }
}
