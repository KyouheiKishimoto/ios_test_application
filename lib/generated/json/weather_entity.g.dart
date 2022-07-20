import 'package:ios_test_application/generated/json/base/json_convert_content.dart';
import 'package:ios_test_application/models/model/weather_entity.dart';

WeatherEntity $WeatherEntityFromJson(Map<String, dynamic> json) {
	final WeatherEntity weatherEntity = WeatherEntity();
	final String? publicTime = jsonConvert.convert<String>(json['publicTime']);
	if (publicTime != null) {
		weatherEntity.publicTime = publicTime;
	}
	final String? publicTimeFormatted = jsonConvert.convert<String>(json['publicTimeFormatted']);
	if (publicTimeFormatted != null) {
		weatherEntity.publicTimeFormatted = publicTimeFormatted;
	}
	final String? publishingOffice = jsonConvert.convert<String>(json['publishingOffice']);
	if (publishingOffice != null) {
		weatherEntity.publishingOffice = publishingOffice;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		weatherEntity.title = title;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		weatherEntity.link = link;
	}
	final WeatherDescription? description = jsonConvert.convert<WeatherDescription>(json['description']);
	if (description != null) {
		weatherEntity.description = description;
	}
	final List<WeatherForecasts>? forecasts = jsonConvert.convertListNotNull<WeatherForecasts>(json['forecasts']);
	if (forecasts != null) {
		weatherEntity.forecasts = forecasts;
	}
	final WeatherLocation? location = jsonConvert.convert<WeatherLocation>(json['location']);
	if (location != null) {
		weatherEntity.location = location;
	}
	final WeatherCopyright? copyright = jsonConvert.convert<WeatherCopyright>(json['copyright']);
	if (copyright != null) {
		weatherEntity.copyright = copyright;
	}
	return weatherEntity;
}

Map<String, dynamic> $WeatherEntityToJson(WeatherEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['publicTime'] = entity.publicTime;
	data['publicTimeFormatted'] = entity.publicTimeFormatted;
	data['publishingOffice'] = entity.publishingOffice;
	data['title'] = entity.title;
	data['link'] = entity.link;
	data['description'] = entity.description.toJson();
	data['forecasts'] =  entity.forecasts.map((v) => v.toJson()).toList();
	data['location'] = entity.location.toJson();
	data['copyright'] = entity.copyright.toJson();
	return data;
}

WeatherDescription $WeatherDescriptionFromJson(Map<String, dynamic> json) {
	final WeatherDescription weatherDescription = WeatherDescription();
	final String? publicTime = jsonConvert.convert<String>(json['publicTime']);
	if (publicTime != null) {
		weatherDescription.publicTime = publicTime;
	}
	final String? publicTimeFormatted = jsonConvert.convert<String>(json['publicTimeFormatted']);
	if (publicTimeFormatted != null) {
		weatherDescription.publicTimeFormatted = publicTimeFormatted;
	}
	final String? headlineText = jsonConvert.convert<String>(json['headlineText']);
	if (headlineText != null) {
		weatherDescription.headlineText = headlineText;
	}
	final String? bodyText = jsonConvert.convert<String>(json['bodyText']);
	if (bodyText != null) {
		weatherDescription.bodyText = bodyText;
	}
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		weatherDescription.text = text;
	}
	return weatherDescription;
}

Map<String, dynamic> $WeatherDescriptionToJson(WeatherDescription entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['publicTime'] = entity.publicTime;
	data['publicTimeFormatted'] = entity.publicTimeFormatted;
	data['headlineText'] = entity.headlineText;
	data['bodyText'] = entity.bodyText;
	data['text'] = entity.text;
	return data;
}

WeatherForecasts $WeatherForecastsFromJson(Map<String, dynamic> json) {
	final WeatherForecasts weatherForecasts = WeatherForecasts();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		weatherForecasts.date = date;
	}
	final String? dateLabel = jsonConvert.convert<String>(json['dateLabel']);
	if (dateLabel != null) {
		weatherForecasts.dateLabel = dateLabel;
	}
	final String? telop = jsonConvert.convert<String>(json['telop']);
	if (telop != null) {
		weatherForecasts.telop = telop;
	}
	final WeatherForecastsDetail? detail = jsonConvert.convert<WeatherForecastsDetail>(json['detail']);
	if (detail != null) {
		weatherForecasts.detail = detail;
	}
	final WeatherForecastsTemperature? temperature = jsonConvert.convert<WeatherForecastsTemperature>(json['temperature']);
	if (temperature != null) {
		weatherForecasts.temperature = temperature;
	}
	final WeatherForecastsChanceOfRain? chanceOfRain = jsonConvert.convert<WeatherForecastsChanceOfRain>(json['chanceOfRain']);
	if (chanceOfRain != null) {
		weatherForecasts.chanceOfRain = chanceOfRain;
	}
	final WeatherForecastsImage? image = jsonConvert.convert<WeatherForecastsImage>(json['image']);
	if (image != null) {
		weatherForecasts.image = image;
	}
	return weatherForecasts;
}

Map<String, dynamic> $WeatherForecastsToJson(WeatherForecasts entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['dateLabel'] = entity.dateLabel;
	data['telop'] = entity.telop;
	data['detail'] = entity.detail.toJson();
	data['temperature'] = entity.temperature.toJson();
	data['chanceOfRain'] = entity.chanceOfRain.toJson();
	data['image'] = entity.image.toJson();
	return data;
}

WeatherForecastsDetail $WeatherForecastsDetailFromJson(Map<String, dynamic> json) {
	final WeatherForecastsDetail weatherForecastsDetail = WeatherForecastsDetail();
	final String? weather = jsonConvert.convert<String>(json['weather']);
	if (weather != null) {
		weatherForecastsDetail.weather = weather;
	}
	final String? wind = jsonConvert.convert<String>(json['wind']);
	if (wind != null) {
		weatherForecastsDetail.wind = wind;
	}
	final String? wave = jsonConvert.convert<String>(json['wave']);
	if (wave != null) {
		weatherForecastsDetail.wave = wave;
	}
	return weatherForecastsDetail;
}

Map<String, dynamic> $WeatherForecastsDetailToJson(WeatherForecastsDetail entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['weather'] = entity.weather;
	data['wind'] = entity.wind;
	data['wave'] = entity.wave;
	return data;
}

WeatherForecastsTemperature $WeatherForecastsTemperatureFromJson(Map<String, dynamic> json) {
	final WeatherForecastsTemperature weatherForecastsTemperature = WeatherForecastsTemperature();
	final WeatherForecastsTemperatureMin? min = jsonConvert.convert<WeatherForecastsTemperatureMin>(json['min']);
	if (min != null) {
		weatherForecastsTemperature.min = min;
	}
	final WeatherForecastsTemperatureMax? max = jsonConvert.convert<WeatherForecastsTemperatureMax>(json['max']);
	if (max != null) {
		weatherForecastsTemperature.max = max;
	}
	return weatherForecastsTemperature;
}

Map<String, dynamic> $WeatherForecastsTemperatureToJson(WeatherForecastsTemperature entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['min'] = entity.min.toJson();
	data['max'] = entity.max.toJson();
	return data;
}

WeatherForecastsTemperatureMin $WeatherForecastsTemperatureMinFromJson(Map<String, dynamic> json) {
	final WeatherForecastsTemperatureMin weatherForecastsTemperatureMin = WeatherForecastsTemperatureMin();
	final dynamic? celsius = jsonConvert.convert<dynamic>(json['celsius']);
	if (celsius != null) {
		weatherForecastsTemperatureMin.celsius = celsius;
	}
	final dynamic? fahrenheit = jsonConvert.convert<dynamic>(json['fahrenheit']);
	if (fahrenheit != null) {
		weatherForecastsTemperatureMin.fahrenheit = fahrenheit;
	}
	return weatherForecastsTemperatureMin;
}

Map<String, dynamic> $WeatherForecastsTemperatureMinToJson(WeatherForecastsTemperatureMin entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['celsius'] = entity.celsius;
	data['fahrenheit'] = entity.fahrenheit;
	return data;
}

WeatherForecastsTemperatureMax $WeatherForecastsTemperatureMaxFromJson(Map<String, dynamic> json) {
	final WeatherForecastsTemperatureMax weatherForecastsTemperatureMax = WeatherForecastsTemperatureMax();
	final dynamic? celsius = jsonConvert.convert<dynamic>(json['celsius']);
	if (celsius != null) {
		weatherForecastsTemperatureMax.celsius = celsius;
	}
	final dynamic? fahrenheit = jsonConvert.convert<dynamic>(json['fahrenheit']);
	if (fahrenheit != null) {
		weatherForecastsTemperatureMax.fahrenheit = fahrenheit;
	}
	return weatherForecastsTemperatureMax;
}

Map<String, dynamic> $WeatherForecastsTemperatureMaxToJson(WeatherForecastsTemperatureMax entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['celsius'] = entity.celsius;
	data['fahrenheit'] = entity.fahrenheit;
	return data;
}

WeatherForecastsChanceOfRain $WeatherForecastsChanceOfRainFromJson(Map<String, dynamic> json) {
	final WeatherForecastsChanceOfRain weatherForecastsChanceOfRain = WeatherForecastsChanceOfRain();
	final String? t0006 = jsonConvert.convert<String>(json['T00_06']);
	if (t0006 != null) {
		weatherForecastsChanceOfRain.t0006 = t0006;
	}
	final String? t0612 = jsonConvert.convert<String>(json['T06_12']);
	if (t0612 != null) {
		weatherForecastsChanceOfRain.t0612 = t0612;
	}
	final String? t1218 = jsonConvert.convert<String>(json['T12_18']);
	if (t1218 != null) {
		weatherForecastsChanceOfRain.t1218 = t1218;
	}
	final String? t1824 = jsonConvert.convert<String>(json['T18_24']);
	if (t1824 != null) {
		weatherForecastsChanceOfRain.t1824 = t1824;
	}
	return weatherForecastsChanceOfRain;
}

Map<String, dynamic> $WeatherForecastsChanceOfRainToJson(WeatherForecastsChanceOfRain entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['T00_06'] = entity.t0006;
	data['T06_12'] = entity.t0612;
	data['T12_18'] = entity.t1218;
	data['T18_24'] = entity.t1824;
	return data;
}

WeatherForecastsImage $WeatherForecastsImageFromJson(Map<String, dynamic> json) {
	final WeatherForecastsImage weatherForecastsImage = WeatherForecastsImage();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		weatherForecastsImage.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		weatherForecastsImage.url = url;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		weatherForecastsImage.width = width;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		weatherForecastsImage.height = height;
	}
	return weatherForecastsImage;
}

Map<String, dynamic> $WeatherForecastsImageToJson(WeatherForecastsImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['width'] = entity.width;
	data['height'] = entity.height;
	return data;
}

WeatherLocation $WeatherLocationFromJson(Map<String, dynamic> json) {
	final WeatherLocation weatherLocation = WeatherLocation();
	final String? area = jsonConvert.convert<String>(json['area']);
	if (area != null) {
		weatherLocation.area = area;
	}
	final String? prefecture = jsonConvert.convert<String>(json['prefecture']);
	if (prefecture != null) {
		weatherLocation.prefecture = prefecture;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		weatherLocation.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		weatherLocation.city = city;
	}
	return weatherLocation;
}

Map<String, dynamic> $WeatherLocationToJson(WeatherLocation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['area'] = entity.area;
	data['prefecture'] = entity.prefecture;
	data['district'] = entity.district;
	data['city'] = entity.city;
	return data;
}

WeatherCopyright $WeatherCopyrightFromJson(Map<String, dynamic> json) {
	final WeatherCopyright weatherCopyright = WeatherCopyright();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		weatherCopyright.title = title;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		weatherCopyright.link = link;
	}
	final WeatherCopyrightImage? image = jsonConvert.convert<WeatherCopyrightImage>(json['image']);
	if (image != null) {
		weatherCopyright.image = image;
	}
	final List<WeatherCopyrightProvider>? provider = jsonConvert.convertListNotNull<WeatherCopyrightProvider>(json['provider']);
	if (provider != null) {
		weatherCopyright.provider = provider;
	}
	return weatherCopyright;
}

Map<String, dynamic> $WeatherCopyrightToJson(WeatherCopyright entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['link'] = entity.link;
	data['image'] = entity.image.toJson();
	data['provider'] =  entity.provider.map((v) => v.toJson()).toList();
	return data;
}

WeatherCopyrightImage $WeatherCopyrightImageFromJson(Map<String, dynamic> json) {
	final WeatherCopyrightImage weatherCopyrightImage = WeatherCopyrightImage();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		weatherCopyrightImage.title = title;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		weatherCopyrightImage.link = link;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		weatherCopyrightImage.url = url;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		weatherCopyrightImage.width = width;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		weatherCopyrightImage.height = height;
	}
	return weatherCopyrightImage;
}

Map<String, dynamic> $WeatherCopyrightImageToJson(WeatherCopyrightImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['link'] = entity.link;
	data['url'] = entity.url;
	data['width'] = entity.width;
	data['height'] = entity.height;
	return data;
}

WeatherCopyrightProvider $WeatherCopyrightProviderFromJson(Map<String, dynamic> json) {
	final WeatherCopyrightProvider weatherCopyrightProvider = WeatherCopyrightProvider();
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		weatherCopyrightProvider.link = link;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		weatherCopyrightProvider.name = name;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		weatherCopyrightProvider.note = note;
	}
	return weatherCopyrightProvider;
}

Map<String, dynamic> $WeatherCopyrightProviderToJson(WeatherCopyrightProvider entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['link'] = entity.link;
	data['name'] = entity.name;
	data['note'] = entity.note;
	return data;
}