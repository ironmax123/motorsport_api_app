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
    required List<ScheduleEntry> schedule,
  }) = _HomeViewModelState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeViewModelState build() {
    final schedule = ref.watch(superGTScheduleProvider);
    return HomeViewModelState(
      isLoading: schedule.isLoading,
      error: schedule.error?.toString() ?? '',
      schedule: schedule.value?.schedule ?? [],
    );
  }
}
