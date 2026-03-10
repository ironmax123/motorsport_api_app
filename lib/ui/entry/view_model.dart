import 'package:example/model/cars/cars.dart';
import 'package:example/provider/cars/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
abstract class EntryItem with _$EntryItem {
  const factory EntryItem({
    required String carNumber,
    required String label1,
    required String label2,
    required String driverName1,
    required String driverName2,
  }) = _EntryItem;
}

@freezed
abstract class EntryViewModelState with _$EntryViewModelState {
  const factory EntryViewModelState({
    required bool isLoading,
    required String error,
    required List<EntryItem> teams,
  }) = _EntryViewModelState;
}

@riverpod
class EntryViewModel extends _$EntryViewModel {
  @override
  EntryViewModelState build(String raceType) {
    if (raceType == 'Super GT') {
      final cars = ref.watch(superGTCarsProvider(category: 'gt500'));
      return EntryViewModelState(
        isLoading: cars.isLoading,
        error: cars.error?.toString() ?? '',
        teams: _mapSuperGtTeams(cars.value?.teams ?? []),
      );
    } else {
      final cars = ref.watch(f1CarsProvider);
      return EntryViewModelState(
        isLoading: cars.isLoading,
        error: cars.error?.toString() ?? '',
        teams: _mapF1Teams(cars.value?.teams ?? []),
      );
    }
  }

  Future<void> fetch(String category) async {
    state = state.copyWith(isLoading: true);
    try {
      if (raceType == 'Super GT') {
        final response = ref.read(superGTCarsProvider(category: category));
        state = state.copyWith(
          isLoading: false,
          teams: _mapSuperGtTeams(response.value?.teams ?? []),
        );
      } else {
        final response = ref.read(f1CarsProvider);
        state = state.copyWith(
          isLoading: false,
          teams: _mapF1Teams(response.value?.teams ?? []),
        );
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  List<EntryItem> _mapSuperGtTeams(List<TeamEntry> teams) {
    return teams
        .map(
          (t) => EntryItem(
            carNumber: t.carNumber,
            label1: t.car,
            label2: t.name,
            driverName1: t.driver1,
            driverName2: t.driver2,
          ),
        )
        .toList();
  }

  List<EntryItem> _mapF1Teams(List<TeamEntryF1> teams) {
    return teams
        .map(
          (t) => EntryItem(
            carNumber: '', // F1データには現在のところcarNumberがないため空文字
            label1: t.chassis,
            label2: t.name,
            driverName1: t.driver1,
            driverName2: t.driver2,
          ),
        )
        .toList();
  }
}
