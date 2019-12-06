class Partij {
  final int index;
  final String naam;
  final String details;
  final String logo;
  final int stemmen;

  Partij({this.index, this.naam, this.details, this.logo, this.stemmen});

  factory Partij.fromJson(Map<String, dynamic> json) {
    return Partij(
      index: json['index'],
      naam: json['naam'],
      details: json['details'],
      logo: json['logo'],
      stemmen: json['stem'],
    );
  }
}

class Voter {
  String uid;
  String voteId;
  int markedVoteOption;
}

class StemData {
  String partij;
  int stemmen;

  StemData({this.partij, this.stemmen});

  factory StemData.fromJson(Map<String, dynamic> json) {
    return StemData(
      partij: json['naam'],
      stemmen: json['stem'],
    );
  }
}
