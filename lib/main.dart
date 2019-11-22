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
                title: Text(kAppName),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ),
              body: HomeScreen(),
            ),
        '/info': (context) => Scaffold(
              appBar: AppBar(
                title: Text('Info'),
                leading: IconButton(
                  onPressed: () {
                    print('Hello World!');
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ),
              body: InfoScreen(),
            ),
      },
    );
  }
}
