import 'package:flutter/material.dart';

import '../di/setup_locator.dart';
import '../services/NavigationService.dart';

class ThirdScreen extends StatelessWidget {
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _navigationService.goBack,
          child: Text("Go Back to Second Screen"),
        ),
      ),
    );
  }
}
