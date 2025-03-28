import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/widgets/station_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기차 예매'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationBox(),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
