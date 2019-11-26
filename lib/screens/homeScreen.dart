import 'package:flutter/material.dart';
import 'package:stem/models/partij.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:stem/widgets/customWidgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void previousPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/');
  }

  Future<String> _loadPartij() async {
    return await rootBundle.loadString('assets/partij.json');
  }

  Future<List<Partij>> _getPartij() async {
    var jsonString = await _loadPartij();
    var jsonResponse = json.decode(jsonString);

    List<Partij> partijList = [];

    for (var i in jsonResponse) {
      Partij partij = Partij(i["index"], i["naam"], i["details"]);
      partijList.add(partij);
    }

    print(partijList.length);
    return partijList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardsGrid(),
    );
  }
}
