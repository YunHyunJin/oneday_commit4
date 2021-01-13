import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kkk/tabs/mlkit.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text("ddd"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mlkit()),
            );
          },
        ),
      ),
      body: Text("dsa"),
    );
  }
}
