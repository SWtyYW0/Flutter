import 'package:flutter/material.dart';

class ExampleStatefulWidget extends StatefulWidget {
  const ExampleStatefulWidget({super.key});

  @override
  State<ExampleStatefulWidget> createState() => _ExampleStatefulWidgetState();
}

class _ExampleStatefulWidgetState extends State<ExampleStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Кликов: $_count', style: TextStyle(fontSize: 20),),
            ElevatedButton(
              onPressed: () => setState(() {
                _count++;
              }), 
              child: const Text('Кликни', style: TextStyle(fontSize: 20),)
            )
          ],
        ),
      ),
    );
  }
}