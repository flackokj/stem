import 'package:flutter/material.dart';

import 'package:stem/widgets/customWidgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void previousPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: CardsGrid(),
          ),
        ],
      ),
    );
  }
}
