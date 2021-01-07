
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signin.dart';
import 'tabs/add.dart';
import 'tabs/apitab.dart';
import 'tabs/mlkit.dart';
import 'tabs/pdf.dart';

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Advanced Flutter",
              style: GoogleFonts.pacifico(),
            ),
            backgroundColor: Colors.amber,
            leading: Container(
              child: Builder(builder: (BuildContext context){
                return IconButton(
                  icon: Icon(Icons.share),
                  onPressed: (){
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Coming soon"),
                    ));
                  },
                );
              },
              )
            ),
            actions: [
              IconButton(icon: Icon(Icons.exit_to_app),
                onPressed: logout,
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.wrong_location_outlined),text: "API",),
                Tab(icon: Icon(Icons.auto_fix_high),text: "ML_kit",),
                Tab(icon: Icon(Icons.description), text: "PDF",),
                Tab(icon: Icon(Icons.add), text: "Not yet",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              apitab(),
              mlkit(),
              pdf(),
              add(),
            ],
          ),
        ),
      ),
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