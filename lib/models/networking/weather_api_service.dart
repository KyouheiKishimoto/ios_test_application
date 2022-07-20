import 'package:chopper/chopper.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi()
abstract class WeatherApiService extends ChopperService {
  static const BASE_URL = "https://weather.tsukumijima.net/api/forecast";

  // ChopperClient設定
  static WeatherApiService create() {
    final client = ChopperClient(
      baseUrl: BASE_URL,
      services: [_$WeatherApiService()],
      converter: const JsonConverter(),
    );
    return _$WeatherApiService(client);
  }

  // タグのランキングを降順で取得
  @Get(path: "city/{prefecture_id}")
  Future<Response> getWeatherData(
    @Path('prefecture_id') String? prefectureId,
  );
}