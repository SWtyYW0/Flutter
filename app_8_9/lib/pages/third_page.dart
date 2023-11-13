import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Center(
            child: Lottie.asset('assets/animations/figure.json')
          )
        ],
      ),
    );
  }
}