import 'package:flutter/material.dart';

class SeatNumber extends StatelessWidget {
  const SeatNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('A'),
        ),
        const SizedBox(width: 4),
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('B'),
        ),
        const SizedBox(width: 4),
        const SizedBox(width: 50, height: 50),
        const SizedBox(width: 4),
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('C'),
        ),
        const SizedBox(width: 4),
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('D'),
        ),
      ],
    );
  }

  Widget seatText(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
