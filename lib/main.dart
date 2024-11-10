import 'package:flutter/material.dart';
import 'package:navigator/di/setup_locator.dart';
import 'package:navigator/screens/home_screen.dart';
import 'package:navigator/screens/second_screen.dart';
import 'package:navigator/screens/third_screen.dart';
import 'package:navigator/services/NavigationService.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator with MVVM Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      navigatorKey: getIt<NavigationService>().navigatorKey,
      home: HomeScreen(),
      routes: {
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}
