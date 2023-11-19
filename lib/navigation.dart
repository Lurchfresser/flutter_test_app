import 'package:flutter/material.dart';
import 'package:flutter_test_app/presentation/pages/home_screen/home_screen.dart';
import 'package:flutter_test_app/presentation/pages/test_animation_screen/test_animation.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  static const path = '/';

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<(String, IconData)> _navigationChildren = [
    ("Home", Icons.home),
    ("Test Animation", Icons.science),
  ];
  final List<Widget> _bodyChildren = [
    const HomeScreen(title: "Home Screen"),
    const TestAnimation(),
  ];

  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          for (var item in _navigationChildren)
            BottomNavigationBarItem(
              icon: Icon(item.$2),
              label: item.$1,
            )
        ],
        onTap: (index) => _onItemTapped(index),
        currentIndex: _currentIndex,
      ),
      body: Center(
        child: _bodyChildren[_currentIndex],
      ),
    );
  }
}
