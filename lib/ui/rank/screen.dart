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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildDropdown(
                      label: "Race",
                      value: "SuperGT",
                      items: ["SuperGT"],
                      onChanged: (v) {},
                    ),
                    const Gap(16),
                    _buildDropdown(
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
                    _buildDropdown(
                      label: "Round",
                      value: state.round,
                      items: ["total", "1", "2", "3", "4", "5", "6", "7", "8"],
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.error.isNotEmpty
                ? Center(child: Text('Error: ${state.error}'))
                : ListView.builder(
                    padding: const EdgeInsets.only(bottom: 120),
                    itemCount: state.results.length,
                    itemBuilder: (context, index) {
                      final result = state.results[index];
                      final team = result.team;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
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
                          if (team != null)
                            CarLabel(
                              carNumber: team.carNumber,
                              label1: "${team.name}\n${team.machine}",
                              label2: result.diff ?? "",
                              driverName1: team.driver1,
                              driverName2: team.driver2,
                            ),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    required String label,
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
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
            value: value,
            underline: const SizedBox(),
            items: items
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: onChanged,
            isDense: true,
          ),
        ),
      ],
    );
  }
}
