import 'package:ios_test_application/generated/json/base/json_field.dart';
import 'package:ios_test_application/generated/json/wether_smaple_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class WetherSmapleEntity {

	String? publicTime;
	String? publicTimeFormatted;
	String? publishingOffice;
	String? title;
	String? link;
	WetherSmapleDescription? description;
	List<WetherSmapleForecasts>? forecasts;
	WetherSmapleLocation? location;
	WetherSmapleCopyright? copyright;
  
  WetherSmapleEntity();

  factory WetherSmapleEntity.fromJson(Map<String, dynamic> json) => $WetherSmapleEntityFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleDescription {

	String? publicTime;
	String? publicTimeFormatted;
	String? headlineText;
	String? bodyText;
	String? text;
  
  WetherSmapleDescription();

  factory WetherSmapleDescription.fromJson(Map<String, dynamic> json) => $WetherSmapleDescriptionFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleDescriptionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecasts {

	String? date;
	String? dateLabel;
	String? telop;
	WetherSmapleForecastsDetail? detail;
	WetherSmapleForecastsTemperature? temperature;
	WetherSmapleForecastsChanceOfRain? chanceOfRain;
	WetherSmapleForecastsImage? image;
  
  WetherSmapleForecasts();

  factory WetherSmapleForecasts.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecastsDetail {

	String? weather;
	String? wind;
	String? wave;
  
  WetherSmapleForecastsDetail();

  factory WetherSmapleForecastsDetail.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsDetailFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsDetailToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecastsTemperature {

	WetherSmapleForecastsTemperatureMin? min;
	WetherSmapleForecastsTemperatureMax? max;
  
  WetherSmapleForecastsTemperature();

  factory WetherSmapleForecastsTemperature.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsTemperatureFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsTemperatureToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecastsTemperatureMin {

	dynamic celsius;
	dynamic fahrenheit;
  
  WetherSmapleForecastsTemperatureMin();

  factory WetherSmapleForecastsTemperatureMin.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsTemperatureMinFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsTemperatureMinToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecastsTemperatureMax {

	dynamic celsius;
	dynamic fahrenheit;
  
  WetherSmapleForecastsTemperatureMax();

  factory WetherSmapleForecastsTemperatureMax.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsTemperatureMaxFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsTemperatureMaxToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecastsChanceOfRain {

	@JSONField(name: "T00_06")
	String? t0006;
	@JSONField(name: "T06_12")
	String? t0612;
	@JSONField(name: "T12_18")
	String? t1218;
	@JSONField(name: "T18_24")
	String? t1824;
  
  WetherSmapleForecastsChanceOfRain();

  factory WetherSmapleForecastsChanceOfRain.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsChanceOfRainFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsChanceOfRainToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleForecastsImage {

	String? title;
	String? url;
	int? width;
	int? height;
  
  WetherSmapleForecastsImage();

  factory WetherSmapleForecastsImage.fromJson(Map<String, dynamic> json) => $WetherSmapleForecastsImageFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleForecastsImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleLocation {

	String? area;
	String? prefecture;
	String? district;
	String? city;
  
  WetherSmapleLocation();

  factory WetherSmapleLocation.fromJson(Map<String, dynamic> json) => $WetherSmapleLocationFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleLocationToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleCopyright {

	String? title;
	String? link;
	WetherSmapleCopyrightImage? image;
	List<WetherSmapleCopyrightProvider>? provider;
  
  WetherSmapleCopyright();

  factory WetherSmapleCopyright.fromJson(Map<String, dynamic> json) => $WetherSmapleCopyrightFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleCopyrightToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleCopyrightImage {

	String? title;
	String? link;
	String? url;
	int? width;
	int? height;
  
  WetherSmapleCopyrightImage();

  factory WetherSmapleCopyrightImage.fromJson(Map<String, dynamic> json) => $WetherSmapleCopyrightImageFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleCopyrightImageToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class WetherSmapleCopyrightProvider {

	String? link;
	String? name;
	String? note;
  
  WetherSmapleCopyrightProvider();

  factory WetherSmapleCopyrightProvider.fromJson(Map<String, dynamic> json) => $WetherSmapleCopyrightProviderFromJson(json);

  Map<String, dynamic> toJson() => $WetherSmapleCopyrightProviderToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}