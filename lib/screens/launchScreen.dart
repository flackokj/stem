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
      width: 400,
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              kAppName,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 300.0,
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
