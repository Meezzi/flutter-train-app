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
          SizedBox(height: 8),
          seatLabel(),
          SizedBox(height: 8),
          seatNumber(),
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

  Widget seatLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        labelBox(Colors.purple, '선택됨'),
        SizedBox(width: 20),
        labelBox(Colors.grey[300]!, '선택안됨'),
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

  Widget seatNumber() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('A'),
        ),
        SizedBox(width: 4),
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('B'),
        ),
        SizedBox(width: 4),
        SizedBox(width: 50, height: 50),
        SizedBox(width: 4),
        SizedBox(
          width: 50,
          height: 50,
          child: seatText('C'),
        ),
        SizedBox(width: 4),
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
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget seatBoxRow(int index) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      seatBox(),
      SizedBox(width: 4),
      seatBox(),
      SizedBox(width: 4),
      SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: Text(
            index.toString(),
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      SizedBox(width: 4),
      seatBox(),
      SizedBox(width: 4),
      seatBox(),
      SizedBox(width: 4),
    ]);
  }

  Widget seatBox() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
    );
  }
}
