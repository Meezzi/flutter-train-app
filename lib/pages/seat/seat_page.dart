import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_box_row.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_label.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_number.dart';
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

  void onSeatSelected(String selectedRow, int selectedCol) {
    setState(() {
      row = selectedRow;
      col = selectedCol;
    });
  }

  void _showDialog() {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Column(
          children: [
            const Text('예매 하시겠습니까?',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              '좌석 : $col-$row',
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            child: const Text('취소', style: TextStyle(color: Colors.red)),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('확인', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }

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
          const SeatNumber(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  20,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: SeatRow(
                      rowIndex: index + 1,
                      selectedRow: row,
                      selectedCol: col,
                      onSeatSelected: onSeatSelected,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (row != null && col != null) ? _showDialog : null,
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
}
