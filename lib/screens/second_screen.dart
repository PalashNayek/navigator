import 'package:flutter/material.dart';
import 'package:navigator/view_models/SecondViewModel.dart';

import '../di/setup_locator.dart';
import '../services/NavigationService.dart';

class SecondScreen extends StatelessWidget {
  final SecondViewModel viewModel = getIt<SecondViewModel>();
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: viewModel.navigateToThirdScreen,
          child: Text("Go Back to Third Screen"),
        ),
      ),
    );
  }
}
