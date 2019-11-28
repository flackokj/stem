import 'package:flutter/material.dart';
import 'package:stem/screens/homeScreen.dart';

//IMPORT WIDGETS
import 'package:stem/widgets/customWidgets.dart';

class LaunchScreen extends StatelessWidget {
  void signIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
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
              'assets/images/logo/stem_.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 150.0,
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
