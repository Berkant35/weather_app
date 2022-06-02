import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:worem/line/service/network/network_manager.dart';
import 'package:worem/ui/splash_screen.dart';
import 'package:worem/utilities/constant/app/url_constant.dart';
import 'package:worem/utilities/init/navigation/navigation_route.dart';
import 'package:worem/utilities/init/navigation/navigation_service.dart';
import 'package:worem/utilities/init/theme/theme.dart';

Future<void> main() async {
  NetworkManager.instance?.init(UrlConstants.BASE_URL, {"key": "value"});
  runApp(const ProviderScope(child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        theme: myTheme,
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        home: const SplashScreen(),
      );
    });
  }
}
