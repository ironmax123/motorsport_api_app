import 'package:example/ui/rank/components/rank_dropdown.dart';
import 'package:example/ui/rank/view_model.dart';
import 'package:example/ui/shared/car_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankScreen extends HookConsumerWidget {
  const RankScreen({super.key});

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
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rankViewModelProvider);

    useEffect(() {
      Future.microtask(() => ref.read(rankViewModelProvider.notifier).fetch());
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text('Rank'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.only(
          bottom: 120,
        ), // Bottom Navigation Bar 領域の確保
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Race Dropdown
                    RankDropdown(
                      label: "Race",
                      value: "SuperGT",
                      items: const ["SuperGT"],
                      onChanged: (v) {},
                    ),
                    const Gap(16),

                    // Season Dropdown
                    RankDropdown(
                      label: "Season",
                      value: state.year,
                      items: [for (int i = 2016; i <= 2025; i++) i.toString()],
                      onChanged: (v) {
                        if (v != null) {
                          ref
                              .read(rankViewModelProvider.notifier)
                              .fetch(year: v);
                        }
                      },
                    ),
                    const Gap(16),

                    // Round Dropdown
                    RankDropdown(
                      label: "Round",
                      value: state.round,
                      items: const [
                        "total",
                        "1",
                        "2",
                        "3",
                        "4",
                        "5",
                        "6",
                        "7",
                        "8",
                      ],
                      onChanged: (v) {
                        if (v != null) {
                          ref
                              .read(rankViewModelProvider.notifier)
                              .fetch(round: v);
                        }
                      },
                    ),
                  ],
                ),
                const Gap(16),

                // Category Dropdown
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
                      "${result.rank}${_getRankSuffix(result.rank)}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  if (result.team != null)
                    CarLabel(
                      carNumber: result.team!.carNumber,
                      label1: "${result.team!.name}\n${result.team!.machine}",
                      label2: result.diff ?? "",
                      driverName1: result.team!.driver1,
                      driverName2: result.team!.driver2,
                    ),
                ],
              ),
        ],
      ),
    );
  }
}
