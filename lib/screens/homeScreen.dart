import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '*hier komen de partijen*',
        style: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ),
    );
  }
}
