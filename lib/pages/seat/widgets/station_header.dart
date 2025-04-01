import 'package:flutter/material.dart';

class StationHeader extends StatelessWidget {
  final String arrival;
  final String departure;

  const StationHeader({
    super.key,
    required this.arrival,
    required this.departure,
  });

  @override
  Widget build(BuildContext context) {
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
        const Icon(
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
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 30,
      ),
    );
  }
}
