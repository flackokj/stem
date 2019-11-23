import 'package:flutter/material.dart';
import 'const.dart';

import 'package:stem/screens/launchScreen.dart';
import 'package:stem/screens/homeScreen.dart';
import 'package:stem/screens/infoScreen.dart';

void main() => runApp(StemApp());

class StemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(
              body: LaunchScreen(),
            ),
        '/home': (context) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: true,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.green,
                ),
              ),
              body: HomeScreen(),
            ),
        '/info': (context) => Scaffold(
              appBar: AppBar(
                title: Text(
                  'Info',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.green,
                ),
              ),
              body: InfoScreen(),
            ),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
