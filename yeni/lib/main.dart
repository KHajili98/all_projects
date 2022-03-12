import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var asd = MediaQuery.of(context).size.width;
    var asda = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(asd.toString()),
          Text(asda.toDouble().toString()),
          Text((asd * (25 / asd)).toDouble().toString()),
          Text(
            "salam",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "salam",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
