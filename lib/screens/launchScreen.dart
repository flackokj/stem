import 'package:flutter/material.dart';
import 'package:stem/const.dart';
import 'package:stem/widgets/customWidgets.dart';

class LaunchScreen extends StatelessWidget {
  void signIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Image.asset(
              'assets/images/stem.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          LoginButton(
            label: 'Google Sign In',
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          LoginButton(
            label: 'Anoniem Sign In',
            onPressed: () {
              signIn(context);
            },
          ),
        ],
      ),
    );
  }
}
