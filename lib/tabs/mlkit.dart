import 'package:flutter/material.dart';

class mlkit extends StatefulWidget {
  @override
  _mlkitState createState() => _mlkitState();
}

class _mlkitState extends State<mlkit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
            color: Colors.white,
            child:  Row(
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

        ],
      ),
    );
  }
}
