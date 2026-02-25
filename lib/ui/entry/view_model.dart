import 'package:example/model/cars/cars.dart';
import 'package:example/provider/cars/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
abstract class EntryViewModelState with _$EntryViewModelState {
  const factory EntryViewModelState({
    required bool isLoading,
    required String error,
    required List<TeamEntry> teams,
  }) = _EntryViewModelState;
}

@riverpod
class EntryViewModel extends _$EntryViewModel {
  @override
  EntryViewModelState build() {
    final cars = ref.watch(superGTCarsProvider(category: 'gt500'));
    return EntryViewModelState(
      isLoading: cars.isLoading,
      error: cars.error?.toString() ?? '',
      teams: cars.value?.teams ?? [],
    );
  }

  Future<void> fetch(String category) async {
    state = state.copyWith(isLoading: true);
    try {
      final response = ref.read(superGTCarsProvider(category: category));
      state = state.copyWith(
        isLoading: false,
        teams: response.value?.teams ?? [],
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
