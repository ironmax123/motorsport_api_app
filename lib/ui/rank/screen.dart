import 'package:example/model/results/results.dart';
import 'package:example/ui/rank/components/rank_dropdown.dart';
import 'package:example/ui/rank/view_model.dart';
import 'package:example/ui/shared/car_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankScreen extends HookConsumerWidget {
  const RankScreen({super.key});

  static const _superGtRounds = [
    "total",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
  ];

  static const _f1Rounds2025 = [
    "total",
    "Australia GP",
    "China GP",
    "Japan GP",
    "Bahrain GP",
    "Saudi Arabia GP",
    "Miami GP",
    "Emilia Romagna GP",
    "Monaco GP",
    "Spain GP",
    "Canada GP",
    "Austria GP",
    "Great Britain GP",
    "Belgium GP",
    "Hungary GP",
    "Netherlands GP",
    "Italy GP",
    "Azerbaijan GP",
    "Singapore GP",
    "United States GP",
    "Mexico GP",
    "Brazil GP",
    "Las Vegas GP",
    "Qatar GP",
    "Abu Dhabi GP",
  ];

  static const _f1Rounds2026 = [
    "total",
    "Australia GP",
    "China GP",
    "Japan GP",
    "Miami GP",
    "Canada GP",
    "Monaco GP",
  ];

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

  String _formatRank(String rank) {
    if (rank == 'null') return '-';
    return "$rank${_getRankSuffix(rank)}";
  }

  String _f1DriverName(RaceResult result) {
    if (result.driver != null && result.driver!.isNotEmpty) {
      return result.driver!;
    }

    final carNumber = result.carNumber;
    final team = result.team;
    if (carNumber == null || team == null) return 'Driver unavailable';

    final drivers = [team.driver1, team.driver2, team.driver3, team.driver4];
    final matched = drivers.whereType<String>().cast<String?>().firstWhere(
      (driver) => driver?.trim().startsWith('#$carNumber ') ?? false,
      orElse: () => null,
    );

    if (matched == null) return 'Driver unavailable';
    return matched.trim().replaceFirst('#$carNumber ', '');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rankViewModelProvider);
    final isF1 = state.raceType == 'F1';
    final yearItems = isF1
        ? const ["2025", "2026"]
        : [for (int i = 2016; i <= 2026; i++) i.toString()];
    final roundItems = isF1
        ? (state.year == '2025' ? _f1Rounds2025 : _f1Rounds2026)
        : _superGtRounds;

    useEffect(() {
      Future.microtask(() => ref.read(rankViewModelProvider.notifier).fetch());
      return null;
    }, const []);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          bottom: 120,
        ), // Bottom Navigation Bar 領域の確保
        children: [
          const Gap(30),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 16,
                  runSpacing: 12,
                  children: [
                    // Race Dropdown
                    SizedBox(
                      width: 120,
                      child: RankDropdown(
                        label: "Race",
                        value: state.raceType,
                        items: const ["SuperGT", "F1"],
                        onChanged: (v) {
                          if (v != null) {
                            ref
                                .read(rankViewModelProvider.notifier)
                                .fetch(raceType: v, round: "total");
                          }
                        },
                      ),
                    ),

                    // Season Dropdown
                    SizedBox(
                      width: 100,
                      child: RankDropdown(
                        label: "Season",
                        value: state.year,
                        items: yearItems,
                        onChanged: (v) {
                          if (v != null) {
                            ref
                                .read(rankViewModelProvider.notifier)
                                .fetch(year: v);
                          }
                        },
                      ),
                    ),

                    // Round Dropdown
                    SizedBox(
                      width: isF1 ? 220 : 100,
                      child: RankDropdown(
                        label: "Round",
                        value: state.round,
                        items: roundItems,
                        onChanged: (v) {
                          if (v != null) {
                            ref
                                .read(rankViewModelProvider.notifier)
                                .fetch(round: v);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const Gap(16),

                // Category Dropdown
                if (!isF1)
                  RankDropdown(
                    label: "Category",
                    value: state.category,
                    items: const ["gt500", "gt300"],
                    labelBuilder: (e) => e.toUpperCase(),
                    isRow: true,
                    onChanged: (v) {
                      if (v != null) {
                        ref
                            .read(rankViewModelProvider.notifier)
                            .fetch(category: v);
                      }
                    },
                  ),
              ],
            ),
          ),

          const Divider(),

          // 検索結果 (for文で展開)
          if (state.isLoading)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (state.error.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(child: Text('Error: ${state.error}')),
            )
          else if (state.results.isEmpty)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Center(child: Text('No results found')),
            )
          else
            for (final result in state.results)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: const Color(0xFF001529),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: Text(
                      _formatRank(result.rank),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (result.team != null)
                    isF1
                        ? CarLabel(
                            carNumber: result.carNumber,
                            label1: _f1DriverName(result),
                            label2: result.team!.name,
                            driverName1: result.team!.chassis ?? '',
                            driverName2: result.team!.engine ?? '',
                          )
                        : CarLabel(
                            carNumber: result.team!.carNumber,
                            label1:
                                "${result.team!.name}\n${result.team!.machine ?? ''}",
                            label2: result.diff ?? "",
                            driverName1: result.team!.driver1 ?? '',
                            driverName2: result.team!.driver2 ?? '',
                          ),
                ],
              ),
        ],
      ),
    );
  }
}
