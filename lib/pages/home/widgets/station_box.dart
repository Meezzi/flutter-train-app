import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class StationBox extends StatefulWidget {
  const StationBox({super.key});

  @override
  State<StationBox> createState() => _StationBoxState();
}

class _StationBoxState extends State<StationBox> {
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
          boxText('출발역', context),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 2,
              color: Colors.grey[400],
            ),
          ),
          boxText('도착역', context),
        ],
      ),
    );
  }

  Widget boxText(
    String title,
    BuildContext context,
    String? station,
  ) {
    return GestureDetector(
      onTap: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StationListPage(title)),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            station ?? '선택',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
