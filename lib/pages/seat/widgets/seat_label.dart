import 'package:flutter/material.dart';

class SeatLabel extends StatelessWidget {
  const SeatLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        labelBox(Colors.purple, '선택됨'),
        const SizedBox(width: 20),
        labelBox(Colors.grey[300]!, '선택안됨'),
      ],
    );
  }
}

Widget labelBox(Color boxColor, String labelText) {
  return Row(
    children: [
      Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: boxColor,
        ),
      ),
      const SizedBox(width: 4),
      Text(labelText),
    ],
  );
}
