import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kkk/tabs/mlkit.dart';

import '../home.dart';

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
        backgroundColor: Colors.white,
        title: Text("ddd"),
        leading: IconButton(
          color: Colors.indigo,
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            SystemChrome.setPreferredOrientations([
              DeviceOrientation.portraitDown,
              DeviceOrientation.portraitUp,
            ]);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TabBarDemo()),
            );
          },
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), //모서리를 둥글게
                    border: Border.all(color: Colors.indigo, width: 2)), //테두리
                child: FlatButton(onPressed: null,
                    child: Text("다시", style: TextStyle(color: Colors.indigo),
                    )
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), //모서리를 둥글게
                    border: Border.all(color: Colors.indigo, width: 2)), //테두리
                child: FlatButton(onPressed: null,
                    child: Text("완료", style: TextStyle(color: Colors.indigo),
                    )
                ),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 400.0,
          child: CustomPaint(
            painter: MyPainter(),
            child: Column(
              children: [
                Text( 'hi', style: TextStyle( fontSize: 40.0, color: Colors.yellow, ),),
                Text('flutter'),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
class MyPainter extends CustomPainter {
  @override void paint(Canvas canvas, Size size) {
    var myPaint = Paint();
    myPaint.color = Colors.amber;
    canvas.drawPaint(myPaint);
    myPaint.color = Colors.indigo;
    canvas.drawLine(Offset(10.0, 10.0), Offset(100.0, 100.0), myPaint);
    myPaint.color = Colors.indigo;
    canvas.drawOval(
        Rect.fromCenter(center: Offset(100.0, 150.0), width: 100.0, height: 80.0),
        myPaint
    );
  }
  @override bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
    }
  }


