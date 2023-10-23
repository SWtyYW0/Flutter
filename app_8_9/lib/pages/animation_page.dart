import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Page'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Center(
            child: Lottie.asset('assets/animations/coin.json')
          )
        ],
      ),
    );
  }
}