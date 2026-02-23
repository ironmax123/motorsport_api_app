import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:m3_expressive_flutter/m3_expressive_flutter.dart';

class EntryScreenButtonGroup extends HookWidget {
  const EntryScreenButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = useState(0);
    return ButtonGroup.connected(
      selectionMode: ButtonGroupSelectionMode.required,
      initialSelection: {selected.value},
      onSelectionChanged: (s) => selected.value = s.first,
      children: const [
        ButtonGroupItem(label: 'GT 500'),
        ButtonGroupItem(label: 'GT 300'),
      ],
    );
  }
}
