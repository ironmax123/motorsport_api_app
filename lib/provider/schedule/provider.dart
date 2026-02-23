import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/schedule/schedule.dart';
import '../dio/provider.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
class SuperGTSchedule extends _$SuperGTSchedule {
  @override
  Future<SuperGTScheduleResponse> build() async {
    final client = ref.watch(apiClientProvider);
    final response = await client.get('/v1/super-gt/schedule');
    return SuperGTScheduleResponse.fromJson(response.data);
  }
}
