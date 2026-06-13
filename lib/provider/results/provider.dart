import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/results/results.dart';
import '../dio/provider.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
class SuperGTResultsData extends _$SuperGTResultsData {
  @override
  Future<SuperGTResultsResponse> build({
    required String category,
    required String year,
    String? round,
  }) async {
    final client = ref.watch(apiClientProvider);
    var endpoint = '/v1/super-gt/race/results/$category?year=$year';
    if (round != null && round != 'total') {
      endpoint += '&round=$round';
    }
    final response = await client.get(endpoint);
    return SuperGTResultsResponse.fromJson(response.data);
  }
}

@Riverpod(keepAlive: true)
class RaceResultsData extends _$RaceResultsData {
  @override
  Future<SuperGTResultsResponse> build({
    required String raceType,
    required String category,
    required String year,
    String? round,
  }) async {
    final client = ref.watch(apiClientProvider);
    final isF1 = raceType == 'F1';
    final path = isF1
        ? '/v1/f1/race/results'
        : '/v1/super-gt/race/results/$category';
    final endpoint = Uri(
      path: path,
      queryParameters: {
        'year': year,
        if (round != null && round != 'total') 'round': round,
      },
    ).toString();
    final response = await client.get(endpoint);
    return SuperGTResultsResponse.fromJson(response.data);
  }
}
