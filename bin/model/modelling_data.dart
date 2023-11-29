class Task3 {
  late Item item;
  Task3(this.item);
  Task3.fromJson(Map<String, dynamic> json) {
    item = Item.fromJson(json["item"]);
  }
  Map<String, dynamic> toJson() {
    return {"item": item.toJson()};
  }
}

class Item {
  late String type;
  late String brand;
  late String model;
  late String gender;
  late List<String> sizes_available;
  late List<String> colors_available;
  late Material material;
  late Price price;
  late List<String> care_instructions;
  late List<String> features;
  late Availability availability;
  late List<ClassOfReviews> reviews;

  Item(
      this.type,
      this.brand,
      this.model,
      this.gender,
      this.sizes_available,
      this.colors_available,
      this.material,
      this.price,
      this.care_instructions,
      this.features,
      this.availability,
      this.reviews);
  Item.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    brand = json[brand];
    model = json[model];
    gender = json[gender];
    sizes_available = List.from(json["sizes_available"].map((e) => e));
    colors_available = List.from(json["colors_available"].map((e) => e));
    material = Material.fromJson(json["material"]);
    price = Price.fromJson(json["price"]);
    care_instructions = List.from(json["care_instructions"].map((e) => e));
    features = List.from(json["features"].map((e) => e));
    availability = Availability.fromJson(json["availability"]);
    reviews = List.from(json["reviews"].map((e) => e));
  }
  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "brand": brand,
      "model": model,
      "gender": gender,
      "sizes_available": List.from(sizes_available.map((e) => e)),
      "colors_available": List.from(colors_available.map((e) => e)),
      "material": material.toJson(),
      "price": price.toJson(),
      "care_instructions": List.from(care_instructions.map((e) => e)),
      "features": List.from(features.map((e) => e)),
      "availability": availability.toJson(),
      "reviews": List.from(reviews.map((e) => e))
    };
  }
}

class Material {
  late String main;
  late Blend_percentage blend_percentage;
  Material(this.main, this.blend_percentage);
  Material.fromJson(Map<String, dynamic> json) {
    main = json["main"];
    blend_percentage = Blend_percentage.fromJson(json["blend_percentage"]);
  }
  Map<String, dynamic> toJson() {
    return {"main": main, "blend_percentage": blend_percentage.toJson()};
  }
}

class Blend_percentage {
  late int cotton;
  late int polyester;
  Blend_percentage(this.cotton, this.polyester);

  Blend_percentage.fromJson(Map<String, dynamic> json) {
    cotton = json["cotton"];
    polyester = json["polyester"];
  }

  Map<String, dynamic> toJson() {
    return {"cotton": cotton, "polyester": polyester};
  }
}

class Price {
  late String currency;
  late int amount;
  Price(this.currency, this.amount);

  Price.fromJson(Map<String, dynamic> json) {
    currency = json["currency"];
    amount = json["amount"];
  }

  Map<String, dynamic> toJson() {
    return {
      "currency": currency,
      "amount": amount,
    };
  }
}

class Availability {
  late bool in_stock;
  late int stock_quantity;
  Availability(this.in_stock, this.stock_quantity);

  Availability.fromJson(Map<String, dynamic> json) {
    in_stock = json["in_stock"];
    stock_quantity = json["stock_quantity"];
  }

  Map<String, dynamic> toJson() {
    return {
      "in_stock": in_stock,
      "stock_quantity": stock_quantity,
    };
  }
}

class ClassOfReviews {
  late String user;
  late int rating;
  late String comment;
  ClassOfReviews(this.user, this.rating, this.comment);

  ClassOfReviews.fromJson(Map<String, dynamic> json) {
    user = json["user"];
    rating = json["rating"];
    comment = json["comment"];
  }

  Map<String, dynamic> toJson() {
    return {
      "user": user,
      "rating": rating,
      "comment": comment,
    };
  }
}
