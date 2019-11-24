import 'package:flutter/material.dart';
import 'package:stem/const.dart';

//WIDGETS IMPORT
import 'package:stem/widgets/customWidgets.dart';

class LaunchScreen extends StatelessWidget {
  void signIn(BuildContext context) {
    Navigator.pushNamed(context, '/home');
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
              'assets/images/stem_.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 150.0,
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
