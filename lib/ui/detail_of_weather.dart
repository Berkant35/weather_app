import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worem/utilities/constant/extension/context_extension.dart';
import 'package:worem/utilities/constant/extension/custom_font_theme.dart';
import 'package:worem/utilities/custom_functions.dart';

import '../line/viewmodel/global_providers.dart';
import '../utilities/components/text/customText.dart';

class ShowCityOfWeatherState extends ConsumerWidget {
  const ShowCityOfWeatherState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQueryExtension(context).width,
      height: MediaQueryExtension(context).height * 0.55,

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowInfo(
                title: "City:",
                textOfContent:
                    ref.watch(currentCityOfWeatherProvider)?.location?.name),
            RowInfo(
                title: "Country:",
                textOfContent:
                    ref.watch(currentCityOfWeatherProvider)?.location?.country),
            RowInfo(
                title: "Day:",
                textOfContent: ref.watch(currentCityOfWeatherProvider) != null
                    ? CustomFunctions.dayName(DateTime.parse(ref
                            .watch(currentCityOfWeatherProvider)!
                            .location!
                            .localtime!.substring(0,10))
                        .weekday
                        .toString())
                    : ''),
            RowInfo(
                title:"Humidity:",
                textOfContent: ref
                    .watch(currentCityOfWeatherProvider)
                    ?.current!
                    .humidity!
                    .toString()),
            RowInfo(
                title: "Tempature:",
                textOfContent: ref.watch(currentCityOfWeatherProvider) != null
                    ? ref
                            .watch(currentCityOfWeatherProvider)!
                            .current!
                            .tempC!
                            .toString() +
                        " °C"
                    : '-'),
            RowInfo(
                title: "Feels Like:",
                textOfContent: ref.watch(currentCityOfWeatherProvider) != null
                    ? ref
                            .watch(currentCityOfWeatherProvider)!
                            .current!
                            .feelslikeC!
                            .toString() +
                        " °C"
                    : '-'),
            RowInfo(
                title: "Condition:",
                textOfContent: ref.watch(currentCityOfWeatherProvider) != null
                    ? ref
                        .watch(currentCityOfWeatherProvider)!
                        .current!
                        .condition!
                        .text
                        .toString()
                    : '-'),
          ],
        ),
      ),
    );
  }

  Row RowInfo({String? textOfContent, String? title}) {
    return Row(
      children: [
        CustomText(text: title ?? '-'),
        CustomText(text: textOfContent ?? ''),
      ],
    );
  }
}
