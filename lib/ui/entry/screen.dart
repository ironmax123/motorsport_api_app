import 'package:example/ui/entry/view_model.dart';
import 'package:example/ui/shared/car_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_expressive_flutter/m3_expressive_flutter.dart';

class EntryScreen extends HookConsumerWidget {
  final String raceName;
  const EntryScreen({super.key, required this.raceName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(entryViewModelProvider(raceName));
    final selected = useState(0);
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: Text(raceName)),
      body: ListView(
        children: [
          Text("2026 season Entry", style: TextStyle(fontSize: 20)),
          if (raceName == 'Super GT') ...[
            ButtonGroup.connected(
              selectionMode: ButtonGroupSelectionMode.required,
              initialSelection: {selected.value},
              onSelectionChanged: (s) {
                selected.value = s.first;
                final category = selected.value == 0 ? 'gt500' : 'gt300';
                ref
                    .read(entryViewModelProvider(raceName).notifier)
                    .fetch(category);
              },
              children: const [
                ButtonGroupItem(label: 'GT 500'),
                ButtonGroupItem(label: 'GT 300'),
              ],
            ),
            Gap(12),
          ],
          for (final team in state.teams) ...[
            CarLabel(
              carNumber: team.carNumber,
              label1: team.label1,
              label2: team.label2,
              driverName1: team.driverName1,
              driverName2: team.driverName2,
            ),
            Gap(12),
          ],
        ],
      ),
    );
  }
}
