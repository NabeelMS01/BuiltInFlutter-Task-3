import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news_ui/news_ui.dart';
import 'profile/home_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomePage(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => NewsUi()));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Projects ',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
