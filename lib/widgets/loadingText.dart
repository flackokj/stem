import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          strokeWidth: 5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red[300]),
        ),
      ),
    );
  }
}
