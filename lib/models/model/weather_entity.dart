import 'package:ios_test_application/generated/json/base/json_field.dart';
import 'package:ios_test_application/generated/json/weather_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class WeatherEntity {

	late String publicTime;
	late String publicTimeFormatted;
	late String publishingOffice;
	late String title;
	late String link;
	late WeatherDescription description;
	late List<WeatherForecasts> forecasts;
	late WeatherLocation location;
	late WeatherCopyright copyright;
  
  WeatherEntity();

  factory WeatherEntity.fromJson(Map<String, dynamic> json) => $WeatherEntityFromJson(json);

  Map<String, dynamic> toJson() => $WeatherEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherDescription {

	late String publicTime;
	late String publicTimeFormatted;
	late String headlineText;
	late String bodyText;
	late String text;
  
  WeatherDescription();

  factory WeatherDescription.fromJson(Map<String, dynamic> json) => $WeatherDescriptionFromJson(json);

  Map<String, dynamic> toJson() => $WeatherDescriptionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecasts {

	late String date;
	late String dateLabel;
	late String telop;
	late WeatherForecastsDetail detail;
	late WeatherForecastsTemperature temperature;
	late WeatherForecastsChanceOfRain chanceOfRain;
	late WeatherForecastsImage image;
  
  WeatherForecasts();

  factory WeatherForecasts.fromJson(Map<String, dynamic> json) => $WeatherForecastsFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecastsDetail {

	late String weather;
	late String wind;
	late String wave;
  
  WeatherForecastsDetail();

  factory WeatherForecastsDetail.fromJson(Map<String, dynamic> json) => $WeatherForecastsDetailFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsDetailToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecastsTemperature {

	late WeatherForecastsTemperatureMin min;
	late WeatherForecastsTemperatureMax max;
  
  WeatherForecastsTemperature();

  factory WeatherForecastsTemperature.fromJson(Map<String, dynamic> json) => $WeatherForecastsTemperatureFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsTemperatureToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecastsTemperatureMin {

	dynamic celsius;
	dynamic fahrenheit;
  
  WeatherForecastsTemperatureMin();

  factory WeatherForecastsTemperatureMin.fromJson(Map<String, dynamic> json) => $WeatherForecastsTemperatureMinFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsTemperatureMinToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecastsTemperatureMax {

	dynamic celsius;
	dynamic fahrenheit;
  
  WeatherForecastsTemperatureMax();

  factory WeatherForecastsTemperatureMax.fromJson(Map<String, dynamic> json) => $WeatherForecastsTemperatureMaxFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsTemperatureMaxToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecastsChanceOfRain {

	@JSONField(name: "T00_06")
	late String t0006;
	@JSONField(name: "T06_12")
	late String t0612;
	@JSONField(name: "T12_18")
	late String t1218;
	@JSONField(name: "T18_24")
	late String t1824;
  
  WeatherForecastsChanceOfRain();

  factory WeatherForecastsChanceOfRain.fromJson(Map<String, dynamic> json) => $WeatherForecastsChanceOfRainFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsChanceOfRainToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherForecastsImage {

	late String title;
	late String url;
	late int width;
	late int height;
  
  WeatherForecastsImage();

  factory WeatherForecastsImage.fromJson(Map<String, dynamic> json) => $WeatherForecastsImageFromJson(json);

  Map<String, dynamic> toJson() => $WeatherForecastsImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherLocation {

	late String area;
	late String prefecture;
	late String district;
	late String city;
  
  WeatherLocation();

  factory WeatherLocation.fromJson(Map<String, dynamic> json) => $WeatherLocationFromJson(json);

  Map<String, dynamic> toJson() => $WeatherLocationToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherCopyright {

	late String title;
	late String link;
	late WeatherCopyrightImage image;
	late List<WeatherCopyrightProvider> provider;
  
  WeatherCopyright();

  factory WeatherCopyright.fromJson(Map<String, dynamic> json) => $WeatherCopyrightFromJson(json);

  Map<String, dynamic> toJson() => $WeatherCopyrightToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherCopyrightImage {

	late String title;
	late String link;
	late String url;
	late int width;
	late int height;
  
  WeatherCopyrightImage();

  factory WeatherCopyrightImage.fromJson(Map<String, dynamic> json) => $WeatherCopyrightImageFromJson(json);

  Map<String, dynamic> toJson() => $WeatherCopyrightImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WeatherCopyrightProvider {

	late String link;
	late String name;
	late String note;
  
  WeatherCopyrightProvider();

  factory WeatherCopyrightProvider.fromJson(Map<String, dynamic> json) => $WeatherCopyrightProviderFromJson(json);

  Map<String, dynamic> toJson() => $WeatherCopyrightProviderToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}