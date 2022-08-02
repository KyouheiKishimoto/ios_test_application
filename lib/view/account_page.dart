import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ios_test_application/adapter/weather_list.dart';
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

  bool hoge = false;

  @override
  Widget build(BuildContext context) {
    Future(() async {
      if (hoge == false) {
        await _getWetherData();
        // await _getWetherDataIsolate();
        hoge = true;
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
            floatingActionButton: Column(
              verticalDirection: VerticalDirection.down,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black), // 追加
                  child: Text(
                    "シングル",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () async {
                    //シングルスレッド処理
                    await _getWetherData();
                    setState(() => _weatherEntity);
                  },
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black),
                  child: Text(
                    "マルチ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 8),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () async {
                    // マルチスレッド処理
                    await _getWetherDataIsolate();
                    setState(() => _weatherEntity);
                  },
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Center(
        child: TextButton(
          onPressed: () {
            _getWetherData();
            setState(() => _weatherEntity);
          },
          child: Text("リロード"),
        ),
      );
    }
  }

  /// シングルスレッドで天気APIの情報をセットする
  static _getWetherData() async {
    final stopWatch = Stopwatch();
    stopWatch.start();
    List<String> number = [
      "471010",
      "020010",
      "060010",
      "070010",
      "400040",
      "130010",
      "140010",
      "160010",
      "190010"
    ];

    for (int i = 0; i < number.length; i++) {
      await _accountViewModel.getWeatherData(number[i]);
      final weatherEntity = _accountViewModel.weatherEntity;
      if (weatherEntity != null) {
        _weatherEntity.add(weatherEntity);
      }
    }
    stopWatch.stop();
    _showTouast(stopWatch.elapsedMilliseconds.toString());
  }

  /// マルチスレッドで天気APIの情報をセットする
  static _getWetherDataIsolate() async {
    final stopWatch = Stopwatch();
    stopWatch.start();
    List<String> number = [
      "471010",
      "020010",
      "060010",
      "070010",
      "400040",
      "130010",
      "140010",
      "160010",
      "190010"
    ];

    for (int i = 0; i < number.length; i++) {
      await _accountViewModel.getWeatherDataIsolate(number[i]);
      final weatherEntity = _accountViewModel.weatherEntity;
      if (weatherEntity != null) {
        _weatherEntity.add(weatherEntity);
      }
    }
    stopWatch.stop();
    _showTouast(stopWatch.elapsedMilliseconds.toString());
  }

  static _showTouast(String time) {
    print(time);
    Fluttertoast.showToast(
        msg: "処理時間:" + time + '[ms]',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white70,
        textColor: Colors.black,
        fontSize: 16.0);
  }
}
