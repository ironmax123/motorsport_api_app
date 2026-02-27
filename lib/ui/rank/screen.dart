import 'package:example/ui/rank/components/rank_card.dart';
import 'package:example/ui/rank/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankScreen extends HookConsumerWidget {
  const RankScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rankViewModelProvider);

    useEffect(() {
      Future.microtask(() => ref.read(rankViewModelProvider.notifier).fetch());
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text('Rank')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
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
                  items: ["2022", "2023", "2024", "2025", "2026"],
                  onChanged: (v) {
                    if (v != null) {
                      ref.read(rankViewModelProvider.notifier).fetch(year: v);
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
                      ref.read(rankViewModelProvider.notifier).fetch(round: v);
                    }
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                const Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Gap(8),
                Container(
                  color: Colors.white,
                  child: DropdownButton<String>(
                    value: state.category,
                    dropdownColor: Colors.white,
                    style: const TextStyle(color: Colors.black),
                    underline: const SizedBox(),
                    items: ["gt500", "gt300"]
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(e.toUpperCase()),
                            ),
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
          ),
          const Gap(16),
          Expanded(
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : state.error.isNotEmpty
                ? Center(child: Text('Error: ${state.error}'))
                : ListView.builder(
                    itemCount: state.results.length,
                    itemBuilder: (context, index) {
                      return RankCard(result: state.results[index]);
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
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Gap(4),
        Container(
          color: Colors.white,
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 8),
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
