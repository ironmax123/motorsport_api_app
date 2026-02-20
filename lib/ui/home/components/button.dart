import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenButton extends StatelessWidget {
  const HomeScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffCC0000),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Super GT",
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
