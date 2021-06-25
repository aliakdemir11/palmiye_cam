class LoadData {

  final String isim;
  final String no;

  LoadData(
      {
        this.isim,
        this.no});

  factory LoadData.fromJson(Map<String, dynamic> json) {
    return LoadData(
      isim: json["isim"],
      no: json["no"],
    );
  }
}