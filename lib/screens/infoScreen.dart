import 'package:flutter/material.dart';

//IMPORT WIDGETS
import 'package:stem/widgets/customWidgets.dart';

//IMPORT MODELS
import 'package:stem/models/partij.dart';

class InfoScreen extends StatelessWidget {
  final Partij partij;
  InfoScreen({this.partij});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          partij.naam,
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.green,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            InfoCard(
              detail: partij.details,
            ),
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
      ),
    );
  }
}
