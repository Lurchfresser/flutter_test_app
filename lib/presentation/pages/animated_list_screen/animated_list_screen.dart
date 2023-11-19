import 'package:flutter/material.dart';

class AnimatedListScreen extends StatelessWidget {
  const AnimatedListScreen({super.key});

 static const path = '/test-animation/animated-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List"),
      ),
    );
  }
}