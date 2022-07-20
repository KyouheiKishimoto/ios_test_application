import 'dart:async';
import 'dart:isolate';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPage createState() => _NotificationPage();
}

class _NotificationPage extends State<NotificationPage> {
  int _parallelCounter = 0;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Comparison Widgets'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text("同期処理"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 32),
                          child: Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          child: FloatingActionButton(
                            onPressed: _incrementCounter,
                            tooltip: 'Increment',
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text("並行処理"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 32),
                          child: Text(
                            '$_parallelCounter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          child: FloatingActionButton(
                            onPressed: _incrementParallelCounter,
                            tooltip: 'Increment',
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 並行処理でのカウント処理
  Future<void> _incrementParallelCounter() async {
    var recivePort = ReceivePort();
    var sendPort = recivePort.sendPort;
    late Capability capability;

    // 子供からメッセージを受け取る
    recivePort.listen((message) {
      print(message);
      recivePort.close();
    });

    final isolate = await Isolate.spawn(child, sendPort);

    Timer(const Duration(seconds: 5), () {
      print("pausing");
      capability = isolate.pause();
    });
    Timer(const Duration(seconds: 10), () {
      print("resume");
      isolate.resume(capability);
    });

    Timer(const Duration(seconds: 15), () {
      print("kill");
      isolate.kill();
    });

    setState(() {
      _parallelCounter++;
    });
  }

  /// 同期処理
  _incrementCounter() async {
    Timer(const Duration(seconds: 5), () {
      print("シングル");
      setState(() {
        _counter++;
      });
    });
  }

  static void child(SendPort sendPort) {
    int i = 0;
    // 親にメッセージを送る
    Timer.periodic(const Duration(seconds: 1), (timer) => {sendPort.send(i++)});
  }
}
