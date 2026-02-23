import 'package:example/ui/home/components/button.dart';
import 'package:example/ui/home/components/schedule.dart';
import 'package:example/ui/home/view_moidel.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              HomeScreenButton(),
              Gap(12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "2026 season Schedule",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              HomeScreenSchedule(schedule: state.schedule),
            ],
          ),
        ),
      ),
    );
  }
}
