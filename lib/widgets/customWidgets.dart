import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StemButton extends StatelessWidget {
  final String label;
  final double size;
  final Function onPressed;

  StemButton({this.label, this.size = 350.0, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      child: MaterialButton(
        height: 30,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.green,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String label;
  final double size;
  final Function onPressed;

  LoginButton({this.label, this.size = 300.0, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      child: MaterialButton(
        height: 40,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.green,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String detail;

  InfoCard({this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.maxFinite,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 3,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Text(
            detail,
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          strokeWidth: 5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red[300]),
        ),
      ),
    );
  }
}

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
    );
  }
}
