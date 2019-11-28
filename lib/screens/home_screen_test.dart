// import 'package:flutter/material.dart';
// import 'package:stem/models/partij.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:stem/screens/infoScreen.dart';

// import 'package:stem/widgets/customWidgets.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   void previousPage(BuildContext context) {
//     Navigator.pushReplacementNamed(context, '/');
//   }

//   Future<String> _loadPartij() async {
//     return await rootBundle.loadString('assets/partij.json');
//   }

//   Future<List<Partij>> _getPartij() async {
//     var jsonString = await _loadPartij();
//     var jsonResponse = json.decode(jsonString);

//     List<Partij> partijList = [];

//     for (var i in jsonResponse) {
//       Partij partij = Partij(
//         details: i["details"],
//         index: i["index"],
//         naam: i["naam"],
//       );
//       partijList.add(partij);
//     }

//     print(partijList.length);
//     return partijList;
//   }

//   List partijen = [];

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     /*24 is for notification bar on Android*/
//     final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
//     final double itemWidth = size.width / 2;

//     _getPartij().then((partij) {
//       partijen = partij;
//     }).catchError((onError) {
//       print(onError);
//     });

//     return Container(
//       child: GridView.count(
//         crossAxisCount: 2,
//         childAspectRatio: (itemWidth / itemHeight),
//         controller: ScrollController(keepScrollOffset: false),
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         children: partijen.map((var value) {
//           return Container(
//             child: GestureDetector(
//               // onTap: () {
//               //   Navigator.push(
//               //     context,
//               //     MaterialPageRoute(
//               //       builder: (context) => InfoScreen(detail: value.index),
//               //     ),
//               //   );
//               // },
//               child: Card(
//                 semanticContainer: true,
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 elevation: 3,
//                 child: Container(
//                   child: Center(
//                     child: Text(
//                       value.naam,
//                       style: Theme.of(context).textTheme.headline,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
