import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_provider/provider/myData.dart';

class nextPage extends StatefulWidget {
  nextPage({Key key}) : super(key: key);

  @override
  _nextPageState createState() => _nextPageState();
}

class _nextPageState extends State<nextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<myData>(builder: (context, myData, child) {
              return FlatButton(
                  onPressed: () async {
                    myData.getCityData();
                  },
                  color: Colors.blueAccent,
                  child: Text("City Names"));
            }),
            Consumer<myData>(builder: (context, myData, child) {
              return Text(
                'City Name:${myData.cityNames[myData.cityN]}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w900,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
