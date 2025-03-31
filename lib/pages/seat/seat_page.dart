import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  final String arrival;
  final String departure;

  const SeatPage({
    super.key,
    required this.arrival,
    required this.departure,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('좌석 선택')),
        body: Row(
          children: [
            stationTitle(arrival),
            stationTitle(departure),
          ],
        ));
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
