import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_label.dart';
import 'package:flutter_train_app/pages/seat/widgets/station_header.dart';

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
          StationHeader(arrival: widget.arrival, departure: widget.departure),
          SizedBox(height: 8),
          const SeatLabel(),
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (row != null && col != null)
                      ? () {
                          showCupertinoDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                              title: Column(
                                children: [
                                  Text(
                                    '예매 하시겠습니까?',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '좌석 : $col-$row',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              actions: [
                                CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    '취소',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    '확인',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    '예매 하기',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
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
