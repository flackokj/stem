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
