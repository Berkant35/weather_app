import 'package:flutter/material.dart';

import '../utilities/components/text/customText.dart';
import '../utilities/constant/app/app_constant.dart';
import '../utilities/constant/extension/custom_font_theme.dart';
import '../utilities/constant/navigation/navigation_content.dart';
import '../utilities/init/navigation/navigation_service.dart';
import '../utilities/init/theme/custom_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool _visible = false;
  bool isStart = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
    _controller.forward(from: 0.0).then((value) {
      setState(() {
        _visible = true;
      });
    });

    goToLandingPage();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.midNight,
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: CustomText(
            text: 'Weather App',
            customTextStyle: ThemeValueExtension.headline4.copyWith(
                color: CustomColors.tickeMePink,
                fontFamily: ApplicationConstants.fontFamily2),
          ),
        ),
      ),
    );
  }

  Future<void> goToLandingPage() async {
    await Future.delayed(const Duration(seconds: 5), () async {
      await NavigationService.instance
          .navigateToPageClear(path: NavigationConstants.landingPage);
    });
  }
}
