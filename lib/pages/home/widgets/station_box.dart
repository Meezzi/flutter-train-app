import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class StationBox extends StatelessWidget {
  final String? arrival;
  final String? departure;

  final Function(String station, bool isDeparture) onSelected;

  const StationBox({
    super.key,
    required this.arrival,
    required this.departure,
    required this.onSelected,
  });

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
          boxText('출발역', context, arrival, (station) {}),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 2,
              color: Colors.grey[400],
            ),
          ),
          boxText('도착역', context, departure, (station) {}),
        ],
      ),
    );
  }

  Widget boxText(
    String title,
    BuildContext context,
    String? station,
    bool isDeparture,
  ) {
    return GestureDetector(
      onTap: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StationListPage(title)),
        );

        if (result != null) {
          onSelected(result, isDeparture);
        }
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
