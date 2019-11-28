import 'package:flutter/material.dart';

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
        '/home': (context) => HomeScreen(),
        '/info': (context) => InfoScreen(),
        '/chart': (context) => ChartScreen(),
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
