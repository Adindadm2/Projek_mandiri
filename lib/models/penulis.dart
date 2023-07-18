class Penulis {
  int? id;
  String? name;
  String? judul;

  Penulis({
    this.id,
    this.name,
    this.judul,
  });

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }
    map['name'] = name;
    map['mobileNo'] = judul;

    return map;
  }

  Penulis.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.judul = map['mobileNo'];
  }
}
