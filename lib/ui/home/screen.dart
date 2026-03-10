import 'package:example/ui/home/components/button.dart';
import 'package:example/ui/home/components/schedule.dart';
import 'package:example/ui/home/view_moidel.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
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
              HomeScreenButton(
                onTap: () => context.push('/entry', extra: 'Super GT'),
                label: "Super GT",
                color: const Color.fromARGB(255, 204, 68, 0),
              ),
              Gap(12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "2026 season Schedule",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              HomeScreenSchedule(schedule: state.superGtSchedule),
              Gap(24),
              HomeScreenButton(
                onTap: () => context.push('/entry', extra: 'f1'),
                label: "F1",
                color: const Color(0xffE10600),
              ),
              Gap(12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "2026 season Schedule",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              HomeScreenSchedule(schedule: state.f1Schedule),
            ],
          ),
        ),
      ),
    );
  }
}
