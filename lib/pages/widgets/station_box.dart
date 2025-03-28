import 'package:flutter/material.dart';

class StationBox extends StatelessWidget {
  const StationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          boxText('출발역'),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 2,
              color: Colors.grey[400],
            ),
          ),
          boxText('도착역'),
        ],
      ),
    );
  }

  Widget boxText(String text) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Text(
            '선택',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
