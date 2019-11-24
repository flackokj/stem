import 'package:flutter/material.dart';

import 'package:stem/widgets/customWidgets.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          InfoCard(),
          Container(
            margin: EdgeInsets.all(10),
          ),
          StemButton(
            label: 'Stem!',
            onPressed: () {
              print('U heeft succesvol gestemd!');
            },
          ),
        ],
      ),
    );
  }
}
