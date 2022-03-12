import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var asd = MediaQuery.of(context).size.width;
    var asda = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(asd.toString()),
              Text(asda.toString()),
            ],
          ),
        ));
  }
}
