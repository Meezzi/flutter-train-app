import 'package:flutter/material.dart';

class SeatRow extends StatelessWidget {
  final int rowIndex;
  final String? selectedRow;
  final int? selectedCol;
  final void Function(String, int) onSeatSelected;

  const SeatRow({
    super.key,
    required this.rowIndex,
    required this.selectedRow,
    required this.selectedCol,
    required this.onSeatSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        seatBox('A'),
        const SizedBox(width: 4),
        seatBox('B'),
        const SizedBox(width: 4),
        SizedBox(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              rowIndex.toString(),
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(width: 4),
        seatBox('C'),
        const SizedBox(width: 4),
        seatBox('D'),
        const SizedBox(width: 4),
      ],
    );
  }

  Widget seatBox(String label) {
    final bool isSelected = (label == selectedRow && rowIndex == selectedCol);

    return GestureDetector(
      onTap: () => onSeatSelected(label, rowIndex),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.purple : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
