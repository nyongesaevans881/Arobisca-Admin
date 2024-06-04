class Product {
  String? sId;
  String? name;
  String? description;
  int? quantity;
  int? price;
  int? offerPrice;
  ProCategoryId? proCategoryId;
  List<Images>? images;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Product(
      {this.sId,
      this.name,
      this.description,
      this.quantity,
      this.price,
      this.offerPrice,
      this.proCategoryId,
      this.images,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    offerPrice = json['offerPrice'];
    proCategoryId = json['proCategoryId'] != null
        ? new ProCategoryId.fromJson(json['proCategoryId'])
        : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['offerPrice'] = this.offerPrice;
    if (this.proCategoryId != null) {
      data['proCategoryId'] = this.proCategoryId!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class ProCategoryId {
  String? sId;
  String? name;

  ProCategoryId({this.sId, this.name});

  ProCategoryId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class Images {
  int? image;
  String? url;
  String? sId;

  Images({this.image, this.url, this.sId});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    url = json['url'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['url'] = this.url;
    data['_id'] = this.sId;
    return data;
  }
}


