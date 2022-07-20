import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavaridPage extends StatelessWidget {
  const FavaridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Table Widgets'),
        ),
        body: Column(
          children: [
            _TableWidget(),
          ],
        ),
      ),
    );
  }

  Widget _TableWidget() {
    return Container(
      padding: const EdgeInsets.only(
        left: 30,
        top: 120,
        right: 30,
      ),
      child: Table(
        border: TableBorder.all(),
        children: [
          const TableRow(children: [
            TableCell(
              child: Center(
                child: Text("テスト1"),
              ),
              verticalAlignment: TableCellVerticalAlignment.middle,
            ),
            TableCell(
              child: Center(
                child: Text("テスト2"),
              ),
              verticalAlignment: TableCellVerticalAlignment.middle,
            ),
            TableCell(
              child: Center(
                child: Text("テスト3"),
              ),
              verticalAlignment: TableCellVerticalAlignment.middle,
            ),
          ]),
          TableRow(children: [
            TableCell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: Colors.green[400],
                child: const Text(
                  "テスト",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TableCell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: Colors.green[400],
                child: const Text("テスト", style: TextStyle(color: Colors.white)),
              ),
            ),
            TableCell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: Colors.green[400],
                child: const Text("テスト", style: TextStyle(color: Colors.white)),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
