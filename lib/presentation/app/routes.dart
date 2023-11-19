import 'package:flutter/cupertino.dart';
import 'package:flutter_test_app/navigation.dart';
import 'package:flutter_test_app/presentation/pages/animated_list_screen/animated_list_screen.dart';
import 'package:flutter_test_app/presentation/pages/home_screen/home_screen.dart';
import 'package:flutter_test_app/presentation/pages/test_animation_screen/test_animation.dart';
import 'package:routemaster/routemaster.dart';

final routemaster = RoutemasterDelegate(routesBuilder: (context) => routes);
final routes = RouteMap(routes: {
  Navigation.path: (_) => const CupertinoPage(child: Navigation()), 
  TestAnimation.path:(_) => const CupertinoPage(child: TestAnimation()),
  AnimatedListScreen.path: (_) => const CupertinoPage(child: AnimatedListScreen()),
  HomeScreen.path: (_) => const CupertinoPage(child: HomeScreen(title: "Home Screen")),
});