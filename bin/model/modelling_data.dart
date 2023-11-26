import 'dart:convert';

List<Shopping> fromListToObject(String data) =>
    List<Shopping>.from(jsonDecode(data).map((e) => Shopping.fromJson(e)));

String fromObjectToJson(Shopping shopping) => jsonEncode(shopping.toJson());

class Shopping {
  late String productName, category;
  late int cost;
  Details? details;
  late Types types;
  String? id;

  Shopping({
    required this.productName,
    required this.category,
    required this.cost,
    this.details,
    required this.types,
    this.id,
  });

  Shopping.fromJson(Map<String, dynamic> json) {
    productName = json["productName"];
    category = json["category"];
    cost = json["cost"];
    types = Types.fromJson(json["type"]);
    details =
        json["details"] != null ? Details.fromJson(json["details"]) : null;
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    return {
      "productName": productName,
      "category": category,
      "cost": cost,
      "details": details,
      "type": types,
      "id": id,
    };
  }
}

class Details {
  late String color;
  late int weight;
  Dimensions? dimensions;

  Details.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    weight = json["weight"];
    dimensions = json["dimensions"] != null
        ? Dimensions.fromJson(json["dimensions"])
        : null;
  }

  Map<String, dynamic> toJson() => {
        "color": color,
        "weight": weight,
        "dimensions": dimensions,
      };
}

class Dimensions {
  late int length, width, height;

  Dimensions.fromJson(Map<String, dynamic> json) {
    length = json["length"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
      };
}

class Types {
  late String name, comment, id;
  late List<int> count;

  Types.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    comment = json["comment"];
    id = json["id"];
    count = List<int>.from(json["count"].map((e) => e));
  }
}
