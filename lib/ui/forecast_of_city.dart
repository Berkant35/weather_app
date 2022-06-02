import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worem/line/viewmodel/global_providers.dart';
import 'package:worem/line/viewmodel/view_model.dart';
import 'package:worem/utilities/components/text/customText.dart';
import 'package:worem/utilities/constant/extension/EdgeExtension.dart';
import 'package:worem/utilities/constant/extension/context_extension.dart';
import 'package:worem/utilities/constant/extension/custom_font_theme.dart';
import 'package:worem/utilities/custom_functions.dart';

import '../models/city_of_weather_model.dart';

class ForecastOfCity extends ConsumerWidget {
  const ForecastOfCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ViewModel();
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Hava Tahmin',
          customTextStyle:
              ThemeValueExtension.headline6.copyWith(color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: MediaQueryExtension(context).width,
        height: MediaQueryExtension(context).height,
        child: ref.watch(currentCityOfWeatherProvider) != null
            ? FutureBuilder<CityOfWeatherModel?>(
                future: viewModel.getCityOfWeatherState(
                    ref.watch(currentCityOfWeatherProvider)!.location!.name!,
                    ref),
                builder: (context, snapshot) {
                  var currentCity = snapshot.data;
                  var forecastList = currentCity?.forecast!.forecastday;
                  return snapshot.connectionState == ConnectionState.done &&
                          forecastList!.isNotEmpty
                      ? ListView.builder(
                          itemCount: forecastList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      EdgeExtension.normalEdge.edgeValue,
                                vertical: EdgeExtension.normalEdge.edgeValue
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Day',
                                        customTextStyle: titleTheme(),
                                      ),
                                      CustomText(
                                        text: CustomFunctions.dayName(
                                            DateTime.parse(forecastList[index]
                                                    .date
                                                    .toString())
                                                .weekday
                                                .toString()),
                                        customTextStyle: contentTheme(),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          CustomText(
                                            text: 'Tempature: ',
                                            customTextStyle: titleTheme(),
                                          ),
                                          CustomText(
                                            text: forecastList[index]
                                                .day!
                                                .avgtempC!
                                                .toString(),
                                            customTextStyle: contentTheme(),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: 'State: ',
                                            customTextStyle: titleTheme(),
                                          ),
                                          CustomText(
                                            text:
                                                forecastList[index]
                                                    .day!
                                                    .condition!
                                                    .text!,
                                            customTextStyle: contentTheme(),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          })
                      : const Center(
                          child: CircularProgressIndicator(),
                        );
                },
              )
            : Center(
                child: CustomText(
                  text: 'Seçili Bir Şehir Yok',
                  customTextStyle: ThemeValueExtension.subtitle,
                ),
              ),
      ),
    );
  }

  TextStyle titleTheme() {
    return ThemeValueExtension.subtitle.copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle contentTheme() {
    return ThemeValueExtension.subtitle2.copyWith(fontWeight: FontWeight.w500);
  }
}
