import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//IMPORT WIDGETS
import 'package:stem/widgets/infoCard.dart';
import 'package:stem/widgets/stemButton.dart';

class InfoScreen extends StatefulWidget {
  final DocumentSnapshot partij;
  InfoScreen({this.partij});

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.partij.data['naam'],
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
      body: Builder(
        builder: (context) => Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              InfoCard(
                detail: widget.partij.data['details'],
              ),
              Container(
                margin: EdgeInsets.all(10),
              ),
              StemButton(
                label: 'Stem!',
                onPressed: () {
                  Firestore.instance.runTransaction((transaction) async {
                    DocumentSnapshot snap =
                        await transaction.get(widget.partij.reference);
                    await transaction
                        .update(snap.reference, {'stem': snap['stem'] + 1});
                  });
                  print('U heeft succesvol gestemd op ' +
                      widget.partij.data['naam'] +
                      '!');
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Geweldig!\n' 'U heeft gestemd op ' +
                            widget.partij.data['naam'] +
                            '!',
                      ),
                      duration: Duration(
                        seconds: 4,
                      ),
                    ),
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ChartScreen(),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
