
import '../di/setup_locator.dart';
import '../services/NavigationService.dart';

class SecondViewModel {
  final NavigationService _navigationService = getIt<NavigationService>();

  void navigateToThirdScreen() {
    _navigationService.navigateTo('/third');
  }
}
