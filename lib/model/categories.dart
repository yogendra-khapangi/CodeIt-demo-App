class CategoriesModel {
  CategoriesModel({
    required this.data,
  });

  final List<Datum> data;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      data: json["data"] == null
          ? []
          : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );
  }
}

class Datum {
  Datum(
      {required this.id,
      required this.name,
      required this.slug,
      required this.status});

  final int? id;
  final String? name;
  final String? slug;
  bool? status;

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["id"],
      name: json["name"],
      slug: json["slug"],
      status: false,
    );
  }
}
