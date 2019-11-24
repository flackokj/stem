import 'package:flutter/material.dart';
import 'const.dart';

import 'package:stem/screens/launchScreen.dart';
import 'package:stem/screens/homeScreen.dart';
import 'package:stem/screens/infoScreen.dart';
import 'package:stem/screens/chartScreen.dart';

void main() => runApp(StemApp());

class StemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  color: Colors.red,
                ),
                actions: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/chart');
                    },
                    icon: Icon(Icons.insert_chart),
                    color: Colors.red,
                  ),
                ],
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
        '/chart': (context) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.yellow[600],
                ),
              ),
              body: ChartScreen(),
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
