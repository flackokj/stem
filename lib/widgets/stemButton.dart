import 'package:flutter/material.dart';

class StemButton extends StatelessWidget {
  final String label;
  final double size;
  final Function onPressed;

  StemButton({this.label, this.size = 350.0, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      child: MaterialButton(
        height: 30,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.green,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
