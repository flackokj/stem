import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:async' show Future;
import 'package:cloud_firestore/cloud_firestore.dart';

//IMPORT WIDGETS
import 'package:stem/widgets/loadingText.dart';
import 'package:stem/widgets/createChart.dart';

//IMPORT MODEL
import 'package:stem/models/stem.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  List<StemData> stemDataList = [];

  Future _getPartijData() async {
    var firestore = Firestore.instance;

    QuerySnapshot qn = await firestore.collection('partij').getDocuments();

    for (var i in qn.documents) {
      StemData partij = StemData(
        partij: i['naam'],
        stemmen: i['stem'],
      );
      stemDataList.add(partij);
    }

    print(stemDataList.length);
    return stemDataList;
  }

  List<charts.Series<StemData, String>> _getStemData() {
    var data = stemDataList;

    return [
      charts.Series<StemData, String>(
        id: 'Stemmen',
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault.darker,
        domainFn: (StemData partij, _) => partij.partij,
        measureFn: (StemData partij, _) => partij.stemmen,
        data: data,
        labelAccessorFn: (StemData partij, _) => '${partij.stemmen.toString()}',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.yellow[700],
        ),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getPartijData(),
          builder: (BuildContext context, AsyncSnapshot value) {
            if (!value.hasData) {
              return Container(
                child: Loading(),
              );
            }
            return Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'In de onderstaande grafiek ziet u de partijen met de aantal stemmen die zij hebben.',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  child: Card(
                    child: CreateChart(
                      getData: _getStemData(),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
