class SuccessStories {
  SuccessStories({
    this.statusCode,
    this.success,
    this.message,
    this.model,
  });
  int? statusCode;
  bool? success;
  String? message;
  List<Model>? model;

  factory SuccessStories.fromJson(Map<String, dynamic> json) => SuccessStories(
        statusCode: json["statusCode"]== null ? [] : json["statusCode"],
        success: json["success"] == null ? [] : json["success"],
        message: json["message"] == null ? [] : json["message"],
        model: json["model"] == null
            ? []
            : List<Model>.from(json["model"].map((x) => Model.fromMap(x))),
      );

}

class Model {
  String? id;
  String? title;
  String? image;
  DateTime? createdAt;

  Model({
    this.id,
    this.title,
    this.image,
    this.createdAt,
  });

  factory Model.fromMap(Map<String, dynamic> json) => Model(
        id: json["id"]== null ? null : json["id"],
        title: json["title"]== null ? null : json["title"],
        image: json["image"]== null ? null : json["image"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "createdAt": createdAt?.toIso8601String(),
      };
}
