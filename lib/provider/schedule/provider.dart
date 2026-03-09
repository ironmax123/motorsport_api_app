import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/schedule/schedule.dart';
import '../dio/provider.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
class SuperGTSchedule extends _$SuperGTSchedule {
  @override
  Future<ScheduleResponse> build() async {
    final client = ref.watch(apiClientProvider);
    final response = await client.get('/v1/super-gt/schedule');
    return ScheduleResponse.fromJson(response.data);
  }
}

@Riverpod(keepAlive: true)
class F1Schedule extends _$F1Schedule {
  @override
  Future<ScheduleResponse> build() async {
    final client = ref.watch(apiClientProvider);
    final response = await client.get('/v1/f1/schedule');
    return ScheduleResponse.fromJson(response.data);
  }
}
