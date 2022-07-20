import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/model/weather_entity.dart';

Widget weatherListComponent(WeatherEntity weatherData) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 4),
    child: InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(weatherData.title),
            Text(weatherData.description.bodyText),
            Row(children: [
              Text("3日間の天気"),
            ],),
          ],
        ),
      ),
    ),
  );
}
