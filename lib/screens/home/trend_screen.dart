import 'package:flutter/material.dart';

class TrendScreen extends StatelessWidget {
  const TrendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trend'),
      ),
      body: const Center(child: Text('Trend')),
    );
  }
}
