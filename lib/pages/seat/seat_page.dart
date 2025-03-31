import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget stationTitle(String station) {
    return Text(
      station,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 30,
      ),
    );
  }
}
