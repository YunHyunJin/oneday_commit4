//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'signin.dart';
// import 'tabs/add.dart';
// import 'tabs/apitab.dart';
// import 'tabs/mlkit.dart';
// import 'tabs/pdf.dart';
//
// class TabBarDemo extends StatefulWidget {
//   @override
//   _TabBarDemoState createState() => _TabBarDemoState();
// }
//
// class _TabBarDemoState extends State<TabBarDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Advanced Flutter",
//               style: GoogleFonts.pacifico(),
//             ),
//             backgroundColor: Colors.amber,
//             leading: Container(
//               child: Builder(builder: (BuildContext context){
//                 return IconButton(
//                   icon: Icon(Icons.share),
//                   onPressed: (){
//                     Scaffold.of(context).showSnackBar(SnackBar(
//                       content: Text("Coming soon"),
//                     ));
//                   },
//                 );
//               },
//               )
//             ),
//             actions: [
//               IconButton(icon: Icon(Icons.exit_to_app),
//                 onPressed: logout,
//               )
//             ],
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.wrong_location_outlined),text: "API",),
//                 Tab(icon: Icon(Icons.auto_fix_high),text: "ML_kit",),
//                 Tab(icon: Icon(Icons.description), text: "PDF",),
//                 Tab(icon: Icon(Icons.add), text: "Not yet",),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               apitab(),
//               mlkit(),
//               pdf(),
//               add(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Future logout() async {
//     //await FirebaseAuth.instance.signOut();
//     print("logout complete");
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => MyApp()),
//     );
//   }
// }


import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'signin.dart';
import 'tabs/add.dart';
import 'tabs/apitab.dart';
import 'tabs/mlkit.dart';
import 'tabs/pdf.dart';

class TabBarDemo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.amber,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: MyHomePage(title: 'Advanced Flutter Camp'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;
  final _pageOptions = [BarChartDemo(),  mlkit(),pdf(), add()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title, style: TextStyle(color: Colors.black),),
        leading: Container(
            child: Builder(builder: (BuildContext context){
              return IconButton(
                color: Colors.black,
                icon: Icon(Icons.share),
                onPressed: (){
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("========= Coming soon ========="),
                  ));
                },
              );
            },
            )
        ),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app, color: Colors.black,),
            onPressed: logout,
          )
        ],
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        items: [
          TabItem(icon: Icons.wrong_location_outlined, title: 'apitab'),
          TabItem(icon: Icons.remove , title: '나선그리기'),
          TabItem(icon: Icons.description, title: 'pdf'),
          TabItem(icon: Icons.all_inclusive_sharp , title: '직선그리기'),
        ],
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i ){
          setState(() {
            selectedPage = i;
          });
        },
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Future logout() async {
    //await FirebaseAuth.instance.signOut();
    print("logout complete");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
    );
  }
}