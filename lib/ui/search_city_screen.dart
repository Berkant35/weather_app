import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worem/line/viewmodel/global_providers.dart';
import 'package:worem/line/viewmodel/view_model.dart';
import 'package:worem/line/viewmodel/works/loading_works.dart';
import 'package:worem/utilities/components/ImageSup/custom_svg.dart';
import 'package:worem/utilities/components/button/CustomElevatedButton.dart';
import 'package:worem/utilities/components/text/customText.dart';
import 'package:worem/utilities/constant/extension/EdgeExtension.dart';
import 'package:worem/utilities/constant/extension/context_extension.dart';
import 'package:worem/utilities/constant/extension/custom_font_theme.dart';
import 'package:worem/utilities/constant/navigation/navigation_content.dart';
import 'package:worem/utilities/init/theme/custom_colors.dart';
import 'package:worem/utilities/init/theme/theme.dart';

import '../models/current_weather_of_city.dart';
import '../utilities/init/navigation/navigation_service.dart';
import 'detail_of_weather.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ViewModel();
    CurrentWeather? currentWeather;

    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          backLayout(context, ref),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: EdgeExtension.mediumEdge.edgeValue),
              child: SingleChildScrollView(
                child: foreLayout(
                    context, controller, ref, currentWeather, viewModel),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column foreLayout(BuildContext context, TextEditingController controller,
      WidgetRef ref, CurrentWeather? currentWeather, ViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQueryExtension(context).height * 0.15,
        ),
        CustomText(
          text: 'Hava durumunu öğrenmek istediğiniz şehri giriniz',
          customTextStyle: ThemeValueExtension.headline6,
        ),
        SizedBox(
          height: MediaQueryExtension(context).height * 0.02,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hoverColor: Colors.red,
            suffixIcon: const Icon(Icons.search),
            hintText: 'City...',
            hintStyle: ThemeValueExtension.subtitle
                .copyWith(color: myTheme.focusColor),
            contentPadding: EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),
            fillColor: Colors.white,
            border: OutlineInputBorder(
                gapPadding: EdgeExtension.normalEdge.edgeValue),
            disabledBorder: OutlineInputBorder(
                gapPadding: EdgeExtension.normalEdge.edgeValue),
            enabledBorder: OutlineInputBorder(
                gapPadding: EdgeExtension.normalEdge.edgeValue),
            errorBorder: OutlineInputBorder(
                gapPadding: EdgeExtension.normalEdge.edgeValue),
            focusedBorder: OutlineInputBorder(
                gapPadding: EdgeExtension.normalEdge.edgeValue),
          ),
        ),

        SizedBox(
          height: MediaQueryExtension(context).height * 0.02,
        ),
        ref.watch(loginButtonStateProvider) != LoadingStates.loading
            ? CustomElevatedButton(
          onPressed: () async {
            debugPrint('Current Text ${controller.text}');
            ref
                .read(currentCityOfWeatherProvider.notifier)
                .changeCurrentCity(null);
            currentWeather = await viewModel.getCurrentWeatherOfCity(
                controller.text, ref);
            ref
                .read(currentCityOfWeatherProvider.notifier)
                .changeCurrentCity(currentWeather!);
          },
          inButtonWidget: CustomText(
            text: 'Sorgula',
            customTextStyle: ThemeValueExtension.subtitle.copyWith(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
          primaryColor: myTheme.primaryColorDark,
        )
            : const Center(
          child: CircularProgressIndicator(),
        ),
        SizedBox(
          height: MediaQueryExtension(context).height * 0.02,
        ),
        CustomElevatedButton(
          onPressed: () async {

            NavigationService.instance.navigateToPage(
                path: NavigationConstants.foreCastOfCity);

          },
          inButtonWidget: CustomText(
            text: 'Hava Tahminleri',
            customTextStyle: ThemeValueExtension.subtitle.copyWith(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
          primaryColor: myTheme.backgroundColor,
        ),
        const ShowCityOfWeatherState(),

      ],
    );
  }

  Widget backLayout(BuildContext context, WidgetRef ref) {
    return ref.watch(currentCityOfWeatherProvider) != null
        ? Opacity(
      opacity: 0.5,
      child: Image.asset(
        'assets/weather/${ref.watch(currentCityOfWeatherProvider)!.current!
            .condition!.code}.jpeg',
        height: MediaQueryExtension(context).height,
        width: MediaQueryExtension(context).width,
        fit: BoxFit.cover,
      ),
    )
        : const SizedBox();
  }
}
