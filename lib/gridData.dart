import 'package:flutter/material.dart';

class gridData extends StatefulWidget {
  gridData({Key key}) : super(key: key);

  @override
  _gridDataState createState() => _gridDataState();
}

class _gridDataState extends State<gridData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(gridDelegate: null, itemBuilder: null),
    );
  }
}
