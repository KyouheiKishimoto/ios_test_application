import 'package:ios_test_application/generated/json/base/json_convert_content.dart';
import 'package:ios_test_application/models/model/wether_smaple_entity.dart';

WetherSmapleEntity $WetherSmapleEntityFromJson(Map<String, dynamic> json) {
	final WetherSmapleEntity wetherSmapleEntity = WetherSmapleEntity();
	final String? publicTime = jsonConvert.convert<String>(json['publicTime']);
	if (publicTime != null) {
		wetherSmapleEntity.publicTime = publicTime;
	}
	final String? publicTimeFormatted = jsonConvert.convert<String>(json['publicTimeFormatted']);
	if (publicTimeFormatted != null) {
		wetherSmapleEntity.publicTimeFormatted = publicTimeFormatted;
	}
	final String? publishingOffice = jsonConvert.convert<String>(json['publishingOffice']);
	if (publishingOffice != null) {
		wetherSmapleEntity.publishingOffice = publishingOffice;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		wetherSmapleEntity.title = title;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		wetherSmapleEntity.link = link;
	}
	final WetherSmapleDescription? description = jsonConvert.convert<WetherSmapleDescription>(json['description']);
	if (description != null) {
		wetherSmapleEntity.description = description;
	}
	final List<WetherSmapleForecasts>? forecasts = jsonConvert.convertListNotNull<WetherSmapleForecasts>(json['forecasts']);
	if (forecasts != null) {
		wetherSmapleEntity.forecasts = forecasts;
	}
	final WetherSmapleLocation? location = jsonConvert.convert<WetherSmapleLocation>(json['location']);
	if (location != null) {
		wetherSmapleEntity.location = location;
	}
	final WetherSmapleCopyright? copyright = jsonConvert.convert<WetherSmapleCopyright>(json['copyright']);
	if (copyright != null) {
		wetherSmapleEntity.copyright = copyright;
	}
	return wetherSmapleEntity;
}

Map<String, dynamic> $WetherSmapleEntityToJson(WetherSmapleEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['publicTime'] = entity.publicTime;
	data['publicTimeFormatted'] = entity.publicTimeFormatted;
	data['publishingOffice'] = entity.publishingOffice;
	data['title'] = entity.title;
	data['link'] = entity.link;
	data['description'] = entity.description?.toJson();
	data['forecasts'] =  entity.forecasts?.map((v) => v.toJson()).toList();
	data['location'] = entity.location?.toJson();
	data['copyright'] = entity.copyright?.toJson();
	return data;
}

WetherSmapleDescription $WetherSmapleDescriptionFromJson(Map<String, dynamic> json) {
	final WetherSmapleDescription wetherSmapleDescription = WetherSmapleDescription();
	final String? publicTime = jsonConvert.convert<String>(json['publicTime']);
	if (publicTime != null) {
		wetherSmapleDescription.publicTime = publicTime;
	}
	final String? publicTimeFormatted = jsonConvert.convert<String>(json['publicTimeFormatted']);
	if (publicTimeFormatted != null) {
		wetherSmapleDescription.publicTimeFormatted = publicTimeFormatted;
	}
	final String? headlineText = jsonConvert.convert<String>(json['headlineText']);
	if (headlineText != null) {
		wetherSmapleDescription.headlineText = headlineText;
	}
	final String? bodyText = jsonConvert.convert<String>(json['bodyText']);
	if (bodyText != null) {
		wetherSmapleDescription.bodyText = bodyText;
	}
	final String? text = jsonConvert.convert<String>(json['text']);
	if (text != null) {
		wetherSmapleDescription.text = text;
	}
	return wetherSmapleDescription;
}

Map<String, dynamic> $WetherSmapleDescriptionToJson(WetherSmapleDescription entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['publicTime'] = entity.publicTime;
	data['publicTimeFormatted'] = entity.publicTimeFormatted;
	data['headlineText'] = entity.headlineText;
	data['bodyText'] = entity.bodyText;
	data['text'] = entity.text;
	return data;
}

WetherSmapleForecasts $WetherSmapleForecastsFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecasts wetherSmapleForecasts = WetherSmapleForecasts();
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		wetherSmapleForecasts.date = date;
	}
	final String? dateLabel = jsonConvert.convert<String>(json['dateLabel']);
	if (dateLabel != null) {
		wetherSmapleForecasts.dateLabel = dateLabel;
	}
	final String? telop = jsonConvert.convert<String>(json['telop']);
	if (telop != null) {
		wetherSmapleForecasts.telop = telop;
	}
	final WetherSmapleForecastsDetail? detail = jsonConvert.convert<WetherSmapleForecastsDetail>(json['detail']);
	if (detail != null) {
		wetherSmapleForecasts.detail = detail;
	}
	final WetherSmapleForecastsTemperature? temperature = jsonConvert.convert<WetherSmapleForecastsTemperature>(json['temperature']);
	if (temperature != null) {
		wetherSmapleForecasts.temperature = temperature;
	}
	final WetherSmapleForecastsChanceOfRain? chanceOfRain = jsonConvert.convert<WetherSmapleForecastsChanceOfRain>(json['chanceOfRain']);
	if (chanceOfRain != null) {
		wetherSmapleForecasts.chanceOfRain = chanceOfRain;
	}
	final WetherSmapleForecastsImage? image = jsonConvert.convert<WetherSmapleForecastsImage>(json['image']);
	if (image != null) {
		wetherSmapleForecasts.image = image;
	}
	return wetherSmapleForecasts;
}

Map<String, dynamic> $WetherSmapleForecastsToJson(WetherSmapleForecasts entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['date'] = entity.date;
	data['dateLabel'] = entity.dateLabel;
	data['telop'] = entity.telop;
	data['detail'] = entity.detail?.toJson();
	data['temperature'] = entity.temperature?.toJson();
	data['chanceOfRain'] = entity.chanceOfRain?.toJson();
	data['image'] = entity.image?.toJson();
	return data;
}

WetherSmapleForecastsDetail $WetherSmapleForecastsDetailFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecastsDetail wetherSmapleForecastsDetail = WetherSmapleForecastsDetail();
	final String? weather = jsonConvert.convert<String>(json['weather']);
	if (weather != null) {
		wetherSmapleForecastsDetail.weather = weather;
	}
	final String? wind = jsonConvert.convert<String>(json['wind']);
	if (wind != null) {
		wetherSmapleForecastsDetail.wind = wind;
	}
	final String? wave = jsonConvert.convert<String>(json['wave']);
	if (wave != null) {
		wetherSmapleForecastsDetail.wave = wave;
	}
	return wetherSmapleForecastsDetail;
}

Map<String, dynamic> $WetherSmapleForecastsDetailToJson(WetherSmapleForecastsDetail entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['weather'] = entity.weather;
	data['wind'] = entity.wind;
	data['wave'] = entity.wave;
	return data;
}

WetherSmapleForecastsTemperature $WetherSmapleForecastsTemperatureFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecastsTemperature wetherSmapleForecastsTemperature = WetherSmapleForecastsTemperature();
	final WetherSmapleForecastsTemperatureMin? min = jsonConvert.convert<WetherSmapleForecastsTemperatureMin>(json['min']);
	if (min != null) {
		wetherSmapleForecastsTemperature.min = min;
	}
	final WetherSmapleForecastsTemperatureMax? max = jsonConvert.convert<WetherSmapleForecastsTemperatureMax>(json['max']);
	if (max != null) {
		wetherSmapleForecastsTemperature.max = max;
	}
	return wetherSmapleForecastsTemperature;
}

Map<String, dynamic> $WetherSmapleForecastsTemperatureToJson(WetherSmapleForecastsTemperature entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['min'] = entity.min?.toJson();
	data['max'] = entity.max?.toJson();
	return data;
}

WetherSmapleForecastsTemperatureMin $WetherSmapleForecastsTemperatureMinFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecastsTemperatureMin wetherSmapleForecastsTemperatureMin = WetherSmapleForecastsTemperatureMin();
	final dynamic? celsius = jsonConvert.convert<dynamic>(json['celsius']);
	if (celsius != null) {
		wetherSmapleForecastsTemperatureMin.celsius = celsius;
	}
	final dynamic? fahrenheit = jsonConvert.convert<dynamic>(json['fahrenheit']);
	if (fahrenheit != null) {
		wetherSmapleForecastsTemperatureMin.fahrenheit = fahrenheit;
	}
	return wetherSmapleForecastsTemperatureMin;
}

Map<String, dynamic> $WetherSmapleForecastsTemperatureMinToJson(WetherSmapleForecastsTemperatureMin entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['celsius'] = entity.celsius;
	data['fahrenheit'] = entity.fahrenheit;
	return data;
}

WetherSmapleForecastsTemperatureMax $WetherSmapleForecastsTemperatureMaxFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecastsTemperatureMax wetherSmapleForecastsTemperatureMax = WetherSmapleForecastsTemperatureMax();
	final dynamic? celsius = jsonConvert.convert<dynamic>(json['celsius']);
	if (celsius != null) {
		wetherSmapleForecastsTemperatureMax.celsius = celsius;
	}
	final dynamic? fahrenheit = jsonConvert.convert<dynamic>(json['fahrenheit']);
	if (fahrenheit != null) {
		wetherSmapleForecastsTemperatureMax.fahrenheit = fahrenheit;
	}
	return wetherSmapleForecastsTemperatureMax;
}

Map<String, dynamic> $WetherSmapleForecastsTemperatureMaxToJson(WetherSmapleForecastsTemperatureMax entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['celsius'] = entity.celsius;
	data['fahrenheit'] = entity.fahrenheit;
	return data;
}

WetherSmapleForecastsChanceOfRain $WetherSmapleForecastsChanceOfRainFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecastsChanceOfRain wetherSmapleForecastsChanceOfRain = WetherSmapleForecastsChanceOfRain();
	final String? t0006 = jsonConvert.convert<String>(json['T00_06']);
	if (t0006 != null) {
		wetherSmapleForecastsChanceOfRain.t0006 = t0006;
	}
	final String? t0612 = jsonConvert.convert<String>(json['T06_12']);
	if (t0612 != null) {
		wetherSmapleForecastsChanceOfRain.t0612 = t0612;
	}
	final String? t1218 = jsonConvert.convert<String>(json['T12_18']);
	if (t1218 != null) {
		wetherSmapleForecastsChanceOfRain.t1218 = t1218;
	}
	final String? t1824 = jsonConvert.convert<String>(json['T18_24']);
	if (t1824 != null) {
		wetherSmapleForecastsChanceOfRain.t1824 = t1824;
	}
	return wetherSmapleForecastsChanceOfRain;
}

Map<String, dynamic> $WetherSmapleForecastsChanceOfRainToJson(WetherSmapleForecastsChanceOfRain entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['T00_06'] = entity.t0006;
	data['T06_12'] = entity.t0612;
	data['T12_18'] = entity.t1218;
	data['T18_24'] = entity.t1824;
	return data;
}

WetherSmapleForecastsImage $WetherSmapleForecastsImageFromJson(Map<String, dynamic> json) {
	final WetherSmapleForecastsImage wetherSmapleForecastsImage = WetherSmapleForecastsImage();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		wetherSmapleForecastsImage.title = title;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		wetherSmapleForecastsImage.url = url;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		wetherSmapleForecastsImage.width = width;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		wetherSmapleForecastsImage.height = height;
	}
	return wetherSmapleForecastsImage;
}

Map<String, dynamic> $WetherSmapleForecastsImageToJson(WetherSmapleForecastsImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['width'] = entity.width;
	data['height'] = entity.height;
	return data;
}

WetherSmapleLocation $WetherSmapleLocationFromJson(Map<String, dynamic> json) {
	final WetherSmapleLocation wetherSmapleLocation = WetherSmapleLocation();
	final String? area = jsonConvert.convert<String>(json['area']);
	if (area != null) {
		wetherSmapleLocation.area = area;
	}
	final String? prefecture = jsonConvert.convert<String>(json['prefecture']);
	if (prefecture != null) {
		wetherSmapleLocation.prefecture = prefecture;
	}
	final String? district = jsonConvert.convert<String>(json['district']);
	if (district != null) {
		wetherSmapleLocation.district = district;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		wetherSmapleLocation.city = city;
	}
	return wetherSmapleLocation;
}

Map<String, dynamic> $WetherSmapleLocationToJson(WetherSmapleLocation entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['area'] = entity.area;
	data['prefecture'] = entity.prefecture;
	data['district'] = entity.district;
	data['city'] = entity.city;
	return data;
}

WetherSmapleCopyright $WetherSmapleCopyrightFromJson(Map<String, dynamic> json) {
	final WetherSmapleCopyright wetherSmapleCopyright = WetherSmapleCopyright();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		wetherSmapleCopyright.title = title;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		wetherSmapleCopyright.link = link;
	}
	final WetherSmapleCopyrightImage? image = jsonConvert.convert<WetherSmapleCopyrightImage>(json['image']);
	if (image != null) {
		wetherSmapleCopyright.image = image;
	}
	final List<WetherSmapleCopyrightProvider>? provider = jsonConvert.convertListNotNull<WetherSmapleCopyrightProvider>(json['provider']);
	if (provider != null) {
		wetherSmapleCopyright.provider = provider;
	}
	return wetherSmapleCopyright;
}

Map<String, dynamic> $WetherSmapleCopyrightToJson(WetherSmapleCopyright entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['link'] = entity.link;
	data['image'] = entity.image?.toJson();
	data['provider'] =  entity.provider?.map((v) => v.toJson()).toList();
	return data;
}

WetherSmapleCopyrightImage $WetherSmapleCopyrightImageFromJson(Map<String, dynamic> json) {
	final WetherSmapleCopyrightImage wetherSmapleCopyrightImage = WetherSmapleCopyrightImage();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		wetherSmapleCopyrightImage.title = title;
	}
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		wetherSmapleCopyrightImage.link = link;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		wetherSmapleCopyrightImage.url = url;
	}
	final int? width = jsonConvert.convert<int>(json['width']);
	if (width != null) {
		wetherSmapleCopyrightImage.width = width;
	}
	final int? height = jsonConvert.convert<int>(json['height']);
	if (height != null) {
		wetherSmapleCopyrightImage.height = height;
	}
	return wetherSmapleCopyrightImage;
}

Map<String, dynamic> $WetherSmapleCopyrightImageToJson(WetherSmapleCopyrightImage entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['link'] = entity.link;
	data['url'] = entity.url;
	data['width'] = entity.width;
	data['height'] = entity.height;
	return data;
}

WetherSmapleCopyrightProvider $WetherSmapleCopyrightProviderFromJson(Map<String, dynamic> json) {
	final WetherSmapleCopyrightProvider wetherSmapleCopyrightProvider = WetherSmapleCopyrightProvider();
	final String? link = jsonConvert.convert<String>(json['link']);
	if (link != null) {
		wetherSmapleCopyrightProvider.link = link;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		wetherSmapleCopyrightProvider.name = name;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		wetherSmapleCopyrightProvider.note = note;
	}
	return wetherSmapleCopyrightProvider;
}

Map<String, dynamic> $WetherSmapleCopyrightProviderToJson(WetherSmapleCopyrightProvider entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['link'] = entity.link;
	data['name'] = entity.name;
	data['note'] = entity.note;
	return data;
}