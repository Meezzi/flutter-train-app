import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/widgets/station_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기차 예매'),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
