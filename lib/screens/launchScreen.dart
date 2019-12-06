import 'package:flutter/material.dart';

//IMPORT WIDGETS
import 'package:stem/widgets/customWidgets.dart';

//IMPORT SCREENS
import 'package:stem/screens/homeScreen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
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
            height: 200.0,
          ),
          LoginButton(
            label: 'Anoniem Login',
            onPressed: () async {
              signIn(context);
            },
          ),
        ],
      ),
    );
  }
}
