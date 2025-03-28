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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
