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

class LoginButton extends StatelessWidget {
  final String label;
  final double size;
  final Function onPressed;

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
            color: Colors.green,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // final String detail;
  // InfoCard({this.detail});

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
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Momentje...',
        style: TextStyle(
          color: Colors.yellow[600],
          fontSize: 24,
        ),
      ),
    );
  }
}
