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
