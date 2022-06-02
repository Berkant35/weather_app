
part of './network_manager.dart';



abstract class NetworkManagerBase{
  late Dio _dio;

  Dio get manager => _dio;

  NetworkManagerBase();

  void init(String baseUrl,Map<String, dynamic>? headers){
    _dio = Dio(BaseOptions(baseUrl: baseUrl,headers: headers));
    _dio.interceptors.add(InterceptorsWrapper(
        onError: (e, handler) {
          debugPrint('ToString'+e.toString());
          debugPrint('Message'+e.message);
          handler.next(e);
        }));
  }
  Future<CityOfWeatherModel?> getCityOfWeatherState(String cityName);
  Future<CurrentWeather?> getCurrentWeatherState(String cityName);

}
