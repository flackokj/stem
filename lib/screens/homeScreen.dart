import 'package:flutter/material.dart';

import 'package:stem/widgets/customWidgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void previousPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/');
  }

  int _currenState = 0;

  Step getStep({String title, Widget child, bool isActive = false}) {
    return Step(
      title: Text(title),
      content: child,
      isActive: isActive,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              type: StepperType.horizontal,
              currentStep: _currenState,
              steps: [
                getStep(
                  title: 'Partij',
                  child: Text(
                    'Kies eentje...',
                  ),
                  isActive: true,
                ),
                getStep(
                  title: 'Stem',
                  child: Text(
                    'Info...',
                  ),
                  isActive: _currenState >= 1 ? true : false,
                ),
              ],
              onStepContinue: () {
                setState(() {
                  _currenState = (_currenState + 1) > 1 ? 1 : _currenState + 1;
                });
              },
              onStepCancel: () {
                setState(() {
                  _currenState = (_currenState - 1) < 0 ? 0 : _currenState - 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
