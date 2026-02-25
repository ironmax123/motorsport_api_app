import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/cars/cars.dart';
import '../dio/provider.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
class SuperGTCars extends _$SuperGTCars {
  @override
  Future<SuperGTCarsResponse> build({required String category}) async {
    final client = ref.watch(apiClientProvider);
    final endpoint = '/v1/super-gt/cars/$category';
    final response = await client.get(endpoint);
    return SuperGTCarsResponse.fromJson(response.data);
  }
}
