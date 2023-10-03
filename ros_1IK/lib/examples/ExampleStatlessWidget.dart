import 'package:flutter/material.dart';

class ExampleStatlessWidget extends StatelessWidget {
  const ExampleStatlessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatlessWidget'),
      ),
      body: const Center(
        child: Text('StatlessWidget'),
      ),
    );
  }
}