import 'package:flutter/material.dart';

class SeatPage extends StatefulWidget {
  final String arrival;
  final String departure;

  const SeatPage({
    super.key,
    required this.arrival,
    required this.departure,
  });

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  String? row;
  int? col;

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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    20,
                    (index) => Column(
                      children: [
                        seatBoxRow(index + 1),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
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
              stationTitle(widget.arrival),
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
              stationTitle(widget.departure),
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
      seatBox('A', index),
      SizedBox(width: 4),
      seatBox('B', index),
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
      seatBox('C', index),
      SizedBox(width: 4),
      seatBox('D', index),
      SizedBox(width: 4),
    ]);
  }

  Widget seatBox(String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          row = label;
          col = index;
        });
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: (row == label && col == index)
                ? Colors.purple
                : Colors.grey[300],
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
