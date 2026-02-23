import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenButton extends StatelessWidget {
  final String label;
  final Color color;
  const HomeScreenButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.color,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Gap(24),
            Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.black,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
