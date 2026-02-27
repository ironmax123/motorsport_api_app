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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Race",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(4),
                        Container(
                          height: 32,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButton<String>(
                            value: "SuperGT",
                            underline: const SizedBox(),
                            items: ["SuperGT"]
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                            onChanged: (v) {},
                            isDense: true,
                          ),
                        ),
                      ],
                    ),
                    const Gap(16),

                    // Season Dropdown
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Season",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(4),
                        Container(
                          height: 32,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButton<String>(
                            value: state.year,
                            underline: const SizedBox(),
                            items:
                                [
                                      for (int i = 2016; i <= 2025; i++)
                                        i.toString(),
                                    ]
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (v) {
                              if (v != null) {
                                ref
                                    .read(rankViewModelProvider.notifier)
                                    .fetch(year: v);
                              }
                            },
                            isDense: true,
                          ),
                        ),
                      ],
                    ),
                    const Gap(16),

                    // Round Dropdown
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Round",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        const Gap(4),
                        Container(
                          height: 32,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: DropdownButton<String>(
                            value: state.round,
                            underline: const SizedBox(),
                            items:
                                [
                                      "total",
                                      "1",
                                      "2",
                                      "3",
                                      "4",
                                      "5",
                                      "6",
                                      "7",
                                      "8",
                                    ]
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (v) {
                              if (v != null) {
                                ref
                                    .read(rankViewModelProvider.notifier)
                                    .fetch(round: v);
                              }
                            },
                            isDense: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(16),

                // Category Dropdown
                Row(
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    const Gap(8),
                    Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: DropdownButton<String>(
                        value: state.category,
                        style: const TextStyle(color: Colors.black),
                        underline: const SizedBox(),
                        items: ["gt500", "gt300"]
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toUpperCase()),
                              ),
                            )
                            .toList(),
                        onChanged: (v) {
                          if (v != null) {
                            ref
                                .read(rankViewModelProvider.notifier)
                                .fetch(category: v);
                          }
                        },
                        isDense: true,
                      ),
                    ),
                  ],
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
