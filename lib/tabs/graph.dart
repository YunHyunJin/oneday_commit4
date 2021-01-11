import 'package:flutter/material.dart';

import 'apitab.dart';

class graph extends StatefulWidget {
  @override
  _graphState createState() => _graphState();
}

class _graphState extends State<graph> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Text("결과 그래프", style: TextStyle(fontSize: 20),)
      ),
      DefaultTabController(
          length: 5,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                  tabs: [
                    Tab(text: '1초당 떨림의 횟수'),
                    Tab(text: '떨림의 세기'),
                    Tab(text: '벗어난 거리'),
                    Tab(text: '검사 수행 시간'),
                    Tab(text: '검사 평균 속도')
                  ]
              ),
              Container(
                  height: 600.0,
                  child: TabBarView(
                    children: [
                      BarChartDemo(),
                      BarChartDemo(),
                      BarChartDemo(),
                      BarChartDemo(),
                      BarChartDemo(),
                    ],
                  )
              )
            ],
          ))
    ]);
  }
}
