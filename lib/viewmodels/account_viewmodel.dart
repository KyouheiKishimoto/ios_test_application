import 'dart:isolate';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ios_test_application/models/model/weather_entity.dart';
import 'package:ios_test_application/models/networking/weather_api_service.dart';

class AccountViewModel {
  final WeatherApiService _apiService = WeatherApiService.create();

  WeatherEntity? _weatherEntity;

  WeatherEntity? get weatherEntity => _weatherEntity;

  /// シングル
  getWeatherData(String prefectureNumber) async {
    Response response;
    try {
      response = await _apiService.getWeatherData(prefectureNumber);
      if (response.isSuccessful) {
        _weatherEntity = WeatherEntity.fromJson(response.body);
      }
    } on Exception catch (error) {

      Fluttertoast.showToast(
          msg: "error:$error",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white70,
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }

  /// マルチ
  getWeatherDataIsolate(String prefectureNumber) async {
    Response response;
    final receivePort = ReceivePort();
    await Isolate.spawn(_isolate, receivePort.sendPort);
    final sendPort = await receivePort.first as SendPort;
    final answer = ReceivePort();

    try {
      response = await _apiService.getWeatherData(prefectureNumber);
      if (response.isSuccessful) {
        sendPort.send([response.body, answer.sendPort]);
        _weatherEntity = WeatherEntity.fromJson(response.body);
      }
    } on Exception catch (error) {
      Fluttertoast.showToast(
          msg: "error:$error",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white70,
          textColor: Colors.black,
          fontSize: 16.0);
    }
  }

  static void _isolate(SendPort initialReplyTo) {
    final receivePort = ReceivePort();
    initialReplyTo.send(receivePort.sendPort);
    receivePort.listen((message) {
      final data = message[0] as dynamic;
      final send = message[1] as SendPort;
      send.send(WeatherEntity.fromJson(data));
    });
  }
}
