import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenSchedule extends StatelessWidget {
  const HomeScreenSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _ScheduleCard(
            round: "Rd.1",
            circuit: "Circuit 1",
            date: "4/11-04/12",
          ),
          Gap(12),
          _ScheduleCard(
            round: "Rd.2",
            circuit: "Circuit 2",
            date: "4/11-04/12",
          ),
          Gap(12),
          _ScheduleCard(
            round: "Rd.3",
            circuit: "Circuit 3",
            date: "4/11-04/12",
          ),
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
