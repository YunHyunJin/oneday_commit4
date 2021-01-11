import 'package:flutter/material.dart';
import 'package:kkk/tabs/apitab.dart';

import 'graph.dart';
import 'pdf.dart';

class mlkit extends StatefulWidget {
  @override
  _mlkitState createState() => _mlkitState();
}

class _mlkitState extends State<mlkit> {
  TabController ctr;

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: Colors.transparent,
  //     padding: EdgeInsets.all(20),
  //     child: Column(
  //       children: [
  //         Container(
  //           padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
  //           color: Colors.white,
  //           child:  Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               Text("아직 검사를\n 진행하지 않았습니다", style: TextStyle(color: Colors.black38),),
  //               RaisedButton(
  //                 onPressed: () {},
  //                 textColor: Colors.white,
  //                 padding: const EdgeInsets.all(0.0),
  //                 shape:  CircleBorder(),
  //                 child: Container(
  //                   decoration: const BoxDecoration(
  //                     gradient: LinearGradient(
  //                       colors: <Color>[
  //                         Color(0xFF0D47A1),
  //                         Color(0xFF1976D2),
  //                         Color(0xFF42A5F5),
  //                       ],
  //                     ),
  //                   ),
  //                   padding: const EdgeInsets.all(10.0),
  //                   child:
  //                   const Text('새로운 검사 진행하기', style: TextStyle(fontSize: 15)),
  //                 ),
  //               ),
  //             ],
  //           )
  //         ),
  //
  //           MaterialApp(
  //             home: DefaultTabController(
  //               length: 4,
  //               child: Scaffold(
  //                 appBar: AppBar(
  //                   bottom: TabBar(
  //                     controller: ctr,
  //                     tabs: [
  //                       Tab(icon: Icon(Icons.account_tree_sharp),text: "Exercise",),
  //                       Tab(icon: Icon(Icons.add_location_alt_sharp),text: "Search",),
  //                     ],
  //                   ),
  //                 ),
  //                 body: TabBarView(
  //                   controller: ctr,
  //                   children: [
  //                     apitab(),
  //                     pdf()
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //
  //
  //       ],
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          color: Color(0xFFFFF00),
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("아직 검사를\n 진행하지 않았습니다", style: TextStyle(color: Colors.black38),),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                shape:  CircleBorder(),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                  const Text('새로운 검사 진행하기', style: TextStyle(fontSize: 15)),
                ),
              ),
            ],
          )
      ),
      DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                  tabs: [
                    Tab(text: '오른손'),
                    Tab(text: '왼손'),
                    Tab(text: '양손 모아보기')
                  ]
              ),
              Container(
                  height: 600.0,
                  child: TabBarView(
                    children: [
                      graph(),
                      graph(),
                      graph(),

                    ],
                  )
              )
            ],
          ))
    ]);
  }
}
