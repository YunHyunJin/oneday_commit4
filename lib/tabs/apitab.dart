import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//
// Future<Post> fetchPost() async {
//   final response =
//   await http.get('http://apis.data.go.kr/B552584/UlfptcaAlarmInqireSvc/getUlfptcaAlarmInfo?year=2020&pageNo=1&numOfRows=100&returnType=xml&serviceKey');
//
//   if (response.statusCode == 200) {
//     // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     // 만약 요청이 실패하면, 에러를 던집니다.
//     throw Exception('Failed to load post');
//   }
// }
//
// class Post {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;
//
//   Post({this.userId, this.id, this.title, this.body});
//
//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }
//
//
// class apitab extends StatefulWidget {
//   apitab({Key key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<apitab> {
//   Future<Post> post;
//
//   @override
//   void initState() {
//     super.initState();
//     post = fetchPost();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//
//         body: Center(
//           child: FutureBuilder<Post>(
//             future: post,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Text(snapshot.data.title);
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               }
//
//               // 기본적으로 로딩 Spinner를 보여줍니다.
//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
class apitab extends StatefulWidget {
  @override
  _JSONGetState createState() => _JSONGetState();
}

class _JSONGetState extends State<apitab> {

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull('http://jsonplaceholder.typicode.com/posts'),
        headers: {"Accept": "application/json"});
    print(response.body);

    List data = jsonDecode(response.body);
    print("###");
    print(data[1]['title']);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("GET"),
          onPressed: (){
            getData();
          }
        ),
      ),
    );
  }
}


