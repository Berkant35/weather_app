


import 'package:flutter/cupertino.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:worem/models/current_weather_of_city.dart';

enum LoadingStates {loading,loaded}

class LoginButtonStateManager extends StateNotifier<LoadingStates>{
  LoginButtonStateManager(LoadingStates state) : super(LoadingStates.loaded);

  changeState(LoadingStates value){
    state = value;
    debugPrint("State ${state.toString()}");
  }
}

class CurrentWeatherStateManager  extends StateNotifier<CurrentWeather?>{
  CurrentWeatherStateManager(CurrentWeather? state) : super(null);

  changeCurrentCity(CurrentWeather? currentWeather){
    state = currentWeather;
    debugPrint("Gözüken Şehir: ${state?.location?.name ?? '<-ERROR->'}");
  }
}
