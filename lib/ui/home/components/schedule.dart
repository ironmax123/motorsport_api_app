import 'package:example/model/schedule/schedule.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenSchedule extends StatelessWidget {
  final List<ScheduleEntry> schedule;
  const HomeScreenSchedule({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final entry in schedule) ...[
            _ScheduleCard(
              round: entry.round,
              circuit: entry.courseJp,
              date: entry.date,
            ),
            const Gap(12),
          ],
        ],
      ),
    );
  }
}

class _ScheduleCard extends StatelessWidget {
  final String round;
  final String circuit;
  final String date;
  const _ScheduleCard({
    required this.round,
    required this.circuit,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(round), Text(circuit), Text(date)],
      ),
    );
  }
}
