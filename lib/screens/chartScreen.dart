import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.yellow[700],
        ),
      ),
      body: Container(
        child: Text(
          'U bent nu op de chart scherm!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellow[700],
          ),
        ),
      ),
    );
  }
}
