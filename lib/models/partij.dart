import 'package:flutter/material.dart';

class Partij {
  final int index;
  final String naam;
  final String details;
  final String logo;
  final int stemmen;

  Partij({this.index, this.naam, this.details, this.logo, this.stemmen});
}

class Voter {
  String uid;
  String voteId;
  int markedVoteOption;
}

class StemData {
  String partij;
  int stemmen;
  Color color;

  StemData({this.partij, this.stemmen, this.color});
}
