import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CarLabel extends StatelessWidget {
  final String? carNumber;
  final String label1;
  final String label2;
  final String driverName1;
  final String driverName2;
  final String? driverName3;
  final String? driverName4;
  const CarLabel({
    super.key,
    this.carNumber,
    required this.label1,
    required this.label2,
    required this.driverName1,
    required this.driverName2,
    this.driverName3,
    this.driverName4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              if (carNumber != null) _NumberPlate(number: carNumber!),
              Gap(4),
              Text(label1),
              Gap(10),
              Text(label2),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(driverName1), Text(driverName2)],
              ),
              if (driverName3 != null && driverName4 != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(driverName3!), Text(driverName4!)],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberPlate extends StatelessWidget {
  final String number;
  const _NumberPlate({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 50,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.amber, // 下地
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 上の黄色帯
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 14,
            child: ColoredBox(color: Colors.yellow),
          ),

          // 中央の白い四角（30x30）
          Positioned(
            left: 6.5, // (43 - 30) / 2
            top: 17, // yellow(14) + 3
            width: 30,
            height: 30,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text(
                number,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
