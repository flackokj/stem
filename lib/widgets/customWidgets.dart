import 'package:flutter/material.dart';

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

class CardsGrid extends StatelessWidget {
  void getInfo(BuildContext context) {
    Navigator.pushNamed(context, '/info');
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Container(
      child: GridView.count(
        //creates 2 columns
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        children: List.generate(20, (index) {
          return GestureDetector(
            onTap: () {
              getInfo(context);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 3,
              child: Container(
                child: Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
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
          margin: EdgeInsets.all(10),
          child: Text(
            'sHiug ugp;oig uguf yugom. UGKf dykf oyfiyuygpiv yfkjh, ligiuyg. kuyfikhvkhfG YUtoliug.',
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
