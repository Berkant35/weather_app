import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worem/line/viewmodel/global_providers.dart';
import 'package:worem/line/viewmodel/works/loading_works.dart';

import 'package:worem/models/city_of_weather_model.dart';
import 'package:worem/models/current_weather_of_city.dart';

import '../service/network/network_manager.dart';

class ViewModel {
  var networkBussinies = NetworkManager.instance;

  Future<CityOfWeatherModel?> getCityOfWeatherState(
      String cityName, WidgetRef ref) async {
    try {

      return await networkBussinies!.getCityOfWeatherState(cityName);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }

  }

  Future<CurrentWeather?> getCurrentWeatherOfCity(
      String cityName, WidgetRef ref) async {
    try {
      ref
          .read(loginButtonStateProvider.notifier)
          .changeState(LoadingStates.loading);
      return await networkBussinies!.getCurrentWeatherState(cityName);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    } finally {
      ref
          .read(loginButtonStateProvider.notifier)
          .changeState(LoadingStates.loaded);
    }
    return null;
  }
}
