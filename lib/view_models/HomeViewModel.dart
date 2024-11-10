
import '../di/setup_locator.dart';
import '../services/NavigationService.dart';

class HomeViewModel {
  final NavigationService _navigationService = getIt<NavigationService>();

  void navigateToSecondScreen() {
    _navigationService.navigateTo('/second');
  }
}
