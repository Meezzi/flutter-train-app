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
      body: Column(
        children: [
          stationHeader(),
        ],
      ),
    );
  }

  Widget stationHeader() {
    return Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stationTitle(arrival),
              ],
            ),
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            size: 30,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stationTitle(departure),
              ],
            ),
          ),
        ],
    );
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
        SizedBox(width: 4),
        Text(labelText),
      ],
    );
  }
}
