class Cafe {
  final int id;
  final String name;
  final String address;
  final String assetPath;

  Cafe({
    required this.id,
    required this.name,
    required this.address,
    required this.assetPath,
  });

  factory Cafe.fromJson(Map<String, dynamic> json) {
    return Cafe(
      id: json["id"] as int,
      name: json["name"] as String,
      address: json["address"] as String,
      assetPath: json["asset_path"] as String,
    );
  }
}
