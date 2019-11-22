import 'package:flutter/material.dart';

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

class PartijGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        //creates 2 columns
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}
