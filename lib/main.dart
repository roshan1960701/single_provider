import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_provider/gridData.dart';
import 'package:single_provider/nextPage.dart';
import 'package:single_provider/provider/myData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<myData>(
      create: (context) => myData(),
      child: MaterialApp(
        title: 'Single Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single provider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<myData>(builder: (context, myData, child) {
              return MaterialButton(
                  color: Colors.redAccent,
                  child: Text("Counter"),
                  onPressed: () async {
                    myData.changeData();
                  });
            }),
            Consumer<myData>(builder: (context, myData, child) {
              return Text('${myData.num}');
            }),
            MaterialButton(
                color: Colors.orangeAccent,
                child: Text("Next Page"),
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => nextPage()));
                }),
            Consumer<myData>(builder: (context, myData, child) {
              return MaterialButton(
                  color: Colors.pinkAccent,
                  child: Text("City Name"),
                  onPressed: () async {
                    myData.getCityData();
                  });
            }),
            Consumer<myData>(builder: (context, myData, child) {
              return Text('${myData.cityNames[myData.cityN]}');
            }),
            MaterialButton(
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gridData()));
              },
              color: Colors.purpleAccent,
              child: Text('Grid View'),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
