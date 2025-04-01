import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/widgets/station_box.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _arrival;
  String? _departure;

  bool isButtonEnabled() {
    return _arrival != null && _departure != null;
  }

  void _onStationSelected(String station, bool isArrival) {
    setState(() {
      if (isArrival) {
        _arrival = station;
      } else {
        _departure = station;
      }
    });
  }

  void _navigatorToSeatPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SeatPage(
          arrival: _arrival!,
          departure: _departure!,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기차 예매'),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StationBox(
                departure: _departure,
                arrival: _arrival,
                onSelected: _onStationSelected,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isButtonEnabled()
                      ? () => _navigatorToSeatPage(context)
                      : null,
                  child: Text('좌석 선택'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
