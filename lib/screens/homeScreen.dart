import 'package:flutter/material.dart';
import 'package:stem/models/partij.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:stem/screens/chartScreen.dart';

//IMPORT SCREENS
import 'package:stem/screens/infoScreen.dart';

//IMPORT WIDGETS
import 'package:stem/widgets/customWidgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<String> _loadPartij() async {
    return await rootBundle.loadString('assets/partij.json');
  }

  Future<List<Partij>> _getPartij() async {
    var jsonString = await _loadPartij();
    var jsonResponse = json.decode(jsonString);

    List<Partij> partijList = [];

    for (var i in jsonResponse) {
      Partij partij = Partij(
        index: i["index"],
        naam: i["naam"],
        details: i["details"],
        logo: i["logo"],
      );
      partijList.add(partij);
    }

    print(partijList.length);
    return partijList;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.red,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChartScreen(),
                ),
              );
            },
            icon: Icon(Icons.insert_chart),
            color: Colors.red,
          ),
        ],
      ),
      body: Container(
        child: FutureBuilder(
          future: _getPartij(),
          builder: (BuildContext context, AsyncSnapshot value) {
            if (value.data == null) {
              return Container(
                child: LoadingText(),
              );
            } else {
              return GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: value.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoScreen(
                              partij: value.data[index],
                            ),
                          ),
                        );
                      },
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          value.data[index].logo,
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 3,
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (itemWidth / itemHeight),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
