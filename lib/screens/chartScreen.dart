import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/services.dart';
import 'package:stem/models/partij.dart';

class ChartScreen extends StatelessWidget {
  List<charts.Series<StemData, String>> _seriesChartData;

  _getStemmen() {
    var data = [
      StemData(partij: 'NPS', stemmen: 30, color: Colors.green),
      StemData(partij: 'NDP', stemmen: 130, color: Colors.red),
      StemData(partij: 'VHP', stemmen: 83, color: Colors.yellow),
      StemData(partij: 'ABOP', stemmen: 46, color: Colors.deepOrange),
      StemData(partij: 'DOE', stemmen: 15, color: Colors.blueAccent),
      StemData(partij: 'PL', stemmen: 23, color: Colors.tealAccent),
    ];

    _seriesChartData.add(
      charts.Series(
        data: data,
        domainFn: (StemData partij, _) => partij.partij,
        measureFn: (StemData partij, _) => partij.stemmen,
        colorFn: (StemData partij, _) =>
            charts.ColorUtil.fromDartColor(partij.color),
        id: 'Aantal stemmen',
        labelAccessorFn: (StemData row, _) => '${row.stemmen}',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void initState() {
      _seriesChartData = List<charts.Series<StemData, String>>();
      _getStemmen();
    }

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
        child: createChart(context),
      ),
    );
  }

  Widget createChart(BuildContext context) {
    // return charts.BarChart(
    //   _getStemmen(context),
    //   animate: true,
    // );

    return Container(
      child: charts.PieChart(
        _seriesChartData,
        animate: true,
        animationDuration: Duration(seconds: 2),
        behaviors: [
          charts.DatumLegend(
            outsideJustification: charts.OutsideJustification.endDrawArea,
            horizontalFirst: false,
            desiredMaxRows: 2,
            cellPadding: EdgeInsets.only(right: 4, bottom: 4),
            entryTextStyle: charts.TextStyleSpec(
              color: charts.MaterialPalette.purple.shadeDefault,
              fontFamily: 'Georgia',
              fontSize: 12,
            ),
          ),
        ],
        defaultRenderer: charts.ArcRendererConfig(
          arcWidth: 70,
          arcRendererDecorators: [
            charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.inside,
            ),
          ],
        ),
      ),
    );
  }

  // List<charts.Series<StemData, String>> getStemmen(BuildContext context) {}
}
