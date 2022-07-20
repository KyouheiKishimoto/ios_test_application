import 'dart:async';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_test_application/adapter/weather_list.dart';
import 'package:ios_test_application/models/model/prefectures_model.dart';
import 'package:ios_test_application/models/model/weather_entity.dart';
import 'package:ios_test_application/viewmodels/account_viewmodel.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPage createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  static AccountViewModel _accountViewModel = AccountViewModel();

  static List<WeatherEntity> _weatherEntity = [];

  @override
  Widget build(BuildContext context) {
    Future(() async {
      if (_weatherEntity.isEmpty) {
        // await _getWetherData();
        await _getWetherDataIsolate();
        setState(() => _weatherEntity);
      }
    });
    if (!_weatherEntity.isEmpty) {
      return Material(
        child: SafeArea(
          top: false,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Isolate Test'),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () async {
                // await _getWetherData();
                await _getWetherDataIsolate();
                setState(() => _weatherEntity);
              },
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Scrollbar(
                    child: ListView.builder(
                        physics: const PageScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _weatherEntity.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child:
                                  weatherListComponent(_weatherEntity[index]));
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Center();
    }
  }


  static _getWetherData() async {
    List<String> number = ["471010", "020010", "060010", "070010"];

    for (int i = 0; i < number.length; i++) {
      await _accountViewModel.getWeatherDataIsolate(number[i]);
      final weatherEntity = _accountViewModel.weatherEntity;
      if (weatherEntity != null) {
        _weatherEntity.add(weatherEntity);
      }
    }
  }

  static _getWetherDataIsolate() async {
    List<String> number = ["471010", "020010", "060010", "070010"];

    for (int i = 0; i < number.length; i++) {
      await _accountViewModel.getWeatherDataIsolate(number[i]);
      final weatherEntity = _accountViewModel.weatherEntity;
      if (weatherEntity != null) {
        _weatherEntity.add(weatherEntity);
      }
    }
  }
}
