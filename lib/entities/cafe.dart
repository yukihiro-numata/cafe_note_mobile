class Cafe {
  final int id;
  final String name;
  final String address;
  final String imgPath;

  Cafe({
    required this.id,
    required this.name,
    required this.address,
    required this.imgPath,
  });

  factory Cafe.fromJson(Map<String, dynamic> json) {
    return Cafe(
      id: json["id"] as int,
      name: json["name"] as String,
      address: json["address"] as String,
      imgPath: json["img_path"] as String,
    );
  }
}
