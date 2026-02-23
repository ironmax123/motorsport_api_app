import 'package:example/ui/entry/components/button_group.dart';
import 'package:example/ui/shared/car_label.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EntryScreen extends StatelessWidget {
  final String raceName;
  const EntryScreen({super.key, required this.raceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(raceName)),
      body: Column(
        children: [
          Text("2026 season Entry"),
          EntryScreenButtonGroup(),
          Gap(12),
          CarLabel(
            carNumber: "1",
            label1: "TOYOTA \n GR Supra GT500",
            label2: "TGR TEAM au TOM’S \nau TOM'S GR Supra",
            driverName1: "Driver 1",
            driverName2: "Driver 2",
          ),
        ],
      ),
    );
  }
}
