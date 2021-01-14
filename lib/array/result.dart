import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home.dart';
import 'test.dart';

class result extends StatefulWidget {
  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text("검사 결과"),
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          color: Colors.white,
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
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(100),
              width: 300.0,
              height: 300.0,
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
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("1초당 떨림의 횟수", style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
              Text("3.92 Hz",style: TextStyle(fontSize: 20, color: Colors.blueGrey),)
            ],
          ),
          Diveder1(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("떨림의 세기", style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
              Text("0.30 cm",style: TextStyle(fontSize: 20, color: Colors.blueGrey),)
            ],
          ),
          Diveder1(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("목표선에서 벗어난 거리", style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
              Text("0.18 cm",style: TextStyle(fontSize: 20, color: Colors.blueGrey),)
            ],
          ),
          Diveder1(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("검사 수행 시간", style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
              Text("3.03 sec",style: TextStyle(fontSize: 20, color: Colors.blueGrey),)
            ],
          ),
          Diveder1(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("검사 평균 속도", style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
              Text("2.03 cm/sec",style: TextStyle(fontSize: 20, color: Colors.blueGrey),)
            ],
          ),
          Diveder1()

        ],
      ),
    );
  }
  Widget Diveder1(){
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Divider(height: 20,color: Colors.black,),
    );
  }
}
