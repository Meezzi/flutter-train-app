import 'package:flutter/material.dart';
import 'package:flutter_train_app/data/station.dart';

class StationListPage extends StatelessWidget {
  final String title;
  String? selectedStation;

  StationListPage(this.title, this.selectedStation);

  @override
  Widget build(BuildContext context) {
    final filteredStations = Station.values
        .where((station) => station.label != selectedStation)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Column(children: [
        for (final station in filteredStations)
          StationItem(station.label, context),
      ]),
    );
  }

  Widget StationItem(String station, BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectedStation = station;
        Navigator.pop(context, station);
      },
      child: SizedBox(
        height: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                station,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: Theme.of(context).dividerColor),
          ],
        ),
      ),
    );
  }
}
