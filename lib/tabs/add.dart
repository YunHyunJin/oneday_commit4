import 'package:flutter/material.dart';

class add extends StatefulWidget {
  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                  child: Text("새로운 검사진행기하기", style: TextStyle(fontSize: 20, color: Colors.white),),
                  onPressed: null
              ),
            ],
          )
        ],
      ),
    );
  }
}
