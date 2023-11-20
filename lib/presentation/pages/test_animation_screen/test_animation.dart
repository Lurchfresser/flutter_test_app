import 'package:flutter/material.dart';
import 'package:flutter_test_app/presentation/pages/animated_list_screen/animated_list_screen.dart';
import 'package:routemaster/routemaster.dart';

class TestAnimation extends StatelessWidget {
  const TestAnimation({super.key});

  static const path = '/test-animation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            onPressed: ()=>Routemaster.of(context).push(AnimatedListScreen.path),
            child: const Text("Go to animated List"))
      ),
    );
  }
}