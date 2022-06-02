import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worem/line/viewmodel/works/loading_works.dart';
import 'package:worem/models/current_weather_of_city.dart';

final loginButtonStateProvider =
    StateNotifierProvider<LoginButtonStateManager, LoadingStates>((ref) {
  return LoginButtonStateManager(LoadingStates.loaded);
});

final currentCityOfWeatherProvider =
    StateNotifierProvider<CurrentWeatherStateManager, CurrentWeather?>((ref) {
  return CurrentWeatherStateManager(null);
});
