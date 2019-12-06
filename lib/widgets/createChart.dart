import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CreateChart extends StatelessWidget {
  var getData;

  CreateChart({this.getData});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      getData,
      animate: true,
      barRendererDecorator: charts.BarLabelDecorator<String>(
        insideLabelStyleSpec: new charts.TextStyleSpec(),
      ),
      animationDuration: Duration(seconds: 1),
    );
  }
}
