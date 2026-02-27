import 'package:example/model/results/results.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RankCard extends StatelessWidget {
  final RaceResult result;

  const RankCard({super.key, required this.result});

  String _getRankSuffix(String rankStr) {
    final rank = int.tryParse(rankStr);
    if (rank == null) return '';
    if (rank % 100 >= 11 && rank % 100 <= 13) return 'th';
    switch (rank % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  @override
  Widget build(BuildContext context) {
    final team = result.team;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: const Color(0xFF001529),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            "${result.rank}${_getRankSuffix(result.rank)}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 60,
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  if (team != null) _NumberPlate(number: team.carNumber),
                  const Gap(8),
                  if (team != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(team.name, style: const TextStyle(fontSize: 12)),
                        Text(team.car, style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  const Gap(16),
                  if (result.diff != null)
                    Text(result.diff!, style: const TextStyle(fontSize: 12)),
                  const Gap(16),
                  if (team != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          team.driver1,
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          team.driver2,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _NumberPlate extends StatelessWidget {
  final String number;
  const _NumberPlate({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 50,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(color: Colors.amber),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 14,
            child: ColoredBox(color: Colors.yellow),
          ),
          Positioned(
            left: 6.5,
            top: 17,
            width: 30,
            height: 30,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text(
                number,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
