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
              circuitEn: entry.courseEn,
              location: entry.location,
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
  final String circuitEn;
  final String location;
  final String date;
  const _ScheduleCard({
    required this.round,
    required this.circuit,
    required this.circuitEn,
    required this.location,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 125,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rd.$round',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            circuit,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(circuitEn, style: TextStyle(fontSize: 12)),
          Text('Location at: $location'),
          Text(
            date,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
