// class Partij {
//   String partijId;
//   String partijNaam;
//   List<Map<String, int>> options;

//   Partij({this.partijId, this.partijNaam, this.options});
// }

class Partij {
  final int index;
  final String naam;
  final String details;
  final String logo;

  Partij({this.index, this.naam, this.details, this.logo});
}

class Voter {
  String uid;
  String voteId;
  int markedVoteOption;
}
