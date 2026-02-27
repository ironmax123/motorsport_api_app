import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RankDropdown extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String Function(String)? labelBuilder;
  final bool isRow;

  const RankDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.labelBuilder,
    this.isRow = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isRow) {
      return Row(
        children: [_buildLabel(), const Gap(8), _buildDropdownContainer()],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildLabel(), const Gap(4), _buildDropdownContainer()],
      );
    }
  }

  Widget _buildLabel() {
    return Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }

  Widget _buildDropdownContainer() {
    return Container(
      height: 32,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButton<String>(
        value: value,
        style: const TextStyle(color: Colors.black),
        underline: const SizedBox(),
        items: items
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(labelBuilder?.call(e) ?? e),
              ),
            )
            .toList(),
        onChanged: onChanged,
        isDense: true,
      ),
    );
  }
}
