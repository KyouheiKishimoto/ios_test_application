import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_test_application/view/account_page.dart';
import 'package:ios_test_application/view/favorite_page.dart';
import 'package:ios_test_application/view/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'IOSテスト'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = CupertinoTabController();

  static const List<Widget> _screens = <Widget>[
    HomePage(),
    FavaridPage(),
    NotificationPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill),
            label: 'お気に入り',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell_fill),
            label: 'お知らせ',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: 'アカウント',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return _screens[index];
          },
        );
      },
      controller: _controller,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Widgets'),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 30,
          top: 120,
          right: 30,
        ),
        child: const Center(
          child: WidgetList(),
        ),
      ),
    );
  }
}

class WidgetList extends StatefulWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  State<WidgetList> createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetList> {
  static const List<String> _fruitNames = <String>[
    'りんご',
    'バナナ',
    'オレンジ',
    'パイナップル',
    'いちご',
  ];

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('タイトル'),
        message: const Text('メッセージ'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('デフォルトアクション'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('アクション'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('破壊的アクション'),
          )
        ],
      ),
    );
  }

  void _showIOSAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('アラート'),
        content: const Text('通知内容'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('キャンセル'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          )
        ],
      ),
    );
  }

  void _showAndroidAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('タイトル'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('通知内容1'),
                Text('通知内容2'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showPickerDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: 32.0,
            onSelectedItemChanged: (_) {},
            children: List<Widget>.generate(_fruitNames.length, (int index) {
              return Center(
                child: Text(
                  _fruitNames[index],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  CupertinoSlidingSegmentedControl _showIOSSlidingSegmentedControl() {
    return CupertinoSlidingSegmentedControl(
      thumbColor: CupertinoColors.activeBlue,
      backgroundColor: Colors.white,
      onValueChanged: (_) {},
      children: const {
        0: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Material(
            child: Text('タブA'),
          ),
        ),
        1: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Material(
            child: Text('タブB'),
          ),
        ),
        2: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Material(
            child: Text('タブC'),
          ),
        ),
      },
    );
  }

  Material _showAndroidTabBar() {
    return const Material(
      child: Center(),
    );
  }

  bool _switch = true;
  double _slider = 20;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _showIOSSlidingSegmentedControl(),
      const SizedBox(height: 30),
      SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          color: CupertinoColors.systemBlue,
          onPressed: () => _showActionSheet(context),
          child: const Text('アクションシート'),
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          color: CupertinoColors.systemRed,
          onPressed: () => _showIOSAlertDialog(context),
          child: const Text('アラートダイアログ'),
        ),
      ),
      const SizedBox(height: 20),
      SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          color: CupertinoColors.systemGreen,
          onPressed: () => _showPickerDialog(context),
          child: const Text('ピッカーダイアログ'),
        ),
      ),
      const SizedBox(height: 30),
      CupertinoTextField(
        controller: TextEditingController(text: 'テキストフィールド'),
        padding: const EdgeInsets.all(14),
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 2, right: 40),
                child: Icon(CupertinoIcons.alarm,
                    color: CupertinoColors.systemGrey),
              ),
              Material(
                child: Text('スイッチ'),
              ),
            ],
          ),
          CupertinoSwitch(
            value: _switch,
            onChanged: (bool? value) => setState(() => _switch = value!),
          ),
        ],
      ),
      const SizedBox(height: 16),
      SizedBox(
        width: double.infinity,
        child: CupertinoSlider(
          key: const Key('slider'),
          value: _slider,
          divisions: 5,
          max: 100,
          onChanged: (double value) => setState(() => _slider = value),
        ),
      ),
    ]);
  }
}
