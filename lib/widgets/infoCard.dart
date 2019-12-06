import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String detail;

  InfoCard({this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 3,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Text(
            detail,
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
