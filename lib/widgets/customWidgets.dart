import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  String label;
  double size;
  Function onPressed;

  LoginButton({this.label, this.size = 300.0, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      child: MaterialButton(
        height: 40,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.amber,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
