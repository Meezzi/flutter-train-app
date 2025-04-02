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
    final String? selectedStation = (arrival != null) ? arrival : departure;

    return Container(
      alignment: Alignment.center,
      height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          boxText('출발역', context, arrival, selectedStation, true),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 2,
              color: Theme.of(context).dividerColor,
            ),
          ),
          boxText('도착역', context, departure, selectedStation, false),
        ],
      ),
    );
  }

  Widget boxText(
    String title,
    BuildContext context,
    String? station,
    String? selectedStation,
    bool isDeparture,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StationListPage(
                title,
                selectedStation,
              ),
            ),
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
      ),
    );
  }
}
