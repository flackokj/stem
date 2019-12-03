import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:stem/models/partij.dart';

import 'package:stem/widgets/customWidgets.dart';

class ChartScreen extends StatelessWidget {
  List<charts.Series<StemData, String>> _getStemmen() {
    var data = [
      StemData(partij: 'NPS', stemmen: 30),
      StemData(partij: 'NDP', stemmen: 130),
      StemData(partij: 'VHP', stemmen: 87),
      StemData(partij: 'ABOP', stemmen: 46),
      StemData(partij: 'DOE', stemmen: 15),
      StemData(partij: 'PL', stemmen: 23),
    ];

    return [
      charts.Series<StemData, String>(
        id: 'Stemmen',
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault.darker,
        domainFn: (StemData stemmen, _) => stemmen.partij,
        measureFn: (StemData stemmen, _) => stemmen.stemmen,
        data: data,
        labelAccessorFn: (StemData stemmen, _) =>
            '${stemmen.stemmen.toString()}',
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
        height: 400,
        padding: EdgeInsets.all(10),
        child: CreateChart(
          getData: _getStemmen(),
        ),
      ),
    );
  }
}
