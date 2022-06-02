import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:worem/models/city_of_weather_model.dart';
import 'package:worem/models/current_weather_of_city.dart';
import 'package:worem/utilities/constant/app/url_constant.dart';

part 'network_bussinies.dart';

class NetworkManager extends NetworkManagerBase {
  static NetworkManager? _instance;

  static NetworkManager? get instance{
    _instance ??= NetworkManager._();
    return _instance;
  }

  NetworkManager._();

  @override
  Future<CityOfWeatherModel?> getCityOfWeatherState(String cityName) async {
    try{
      final newResponse =
      await _dio.get(
          UrlConstants.BASE_URL+'/forecast.json?key=${UrlConstants.API_KEY}&q=$cityName&days=10&aqi=no');

      debugPrint('Response:-> '+ newResponse.toString());
      if(newResponse.statusCode == 200){
        final takevli =  CityOfWeatherModel.fromJson(newResponse.data);
        return takevli;
      } else {
        return null;
      }
    }catch(e){
      debugPrint('Request error'+e.toString());
    }
    return null;
  }

  @override
  Future<CurrentWeather?> getCurrentWeatherState(String cityName) async {
    try{
      final newResponse = await _dio.get(
          UrlConstants.BASE_URL+'/current.json?key=${UrlConstants.API_KEY}&q=$cityName&aqi=no');
      debugPrint(newResponse.statusMessage);
      if(newResponse.statusCode == 200){
        final currentWeather =  CurrentWeather.fromJson(newResponse.data);
        debugPrint(currentWeather.toJson().toString());
        return currentWeather;
      }else if(newResponse.statusCode == 400){
        debugPrint(newResponse.data['error']+'<-');
        return null;
      }
    }catch(e){
      debugPrint(e.toString());
    }
    return null;
  }

}
