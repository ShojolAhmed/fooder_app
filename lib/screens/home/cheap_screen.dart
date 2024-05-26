import 'package:flutter/material.dart';

class CheapScreen extends StatelessWidget {
  const CheapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cheap'),
      ),
      body: const Center(child: Text('Cheap')),
    );
  }
}
