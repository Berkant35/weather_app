import 'package:flutter/material.dart';


import '../../../ui/forecast_of_city.dart';
import '../../../ui/search_city_screen.dart';
import '../../constant/navigation/navigation_content.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.landingPage:
        return normalNavigate(const LandingPage());
      case NavigationConstants.foreCastOfCity:
        return normalNavigate(const ForecastOfCity());

      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
