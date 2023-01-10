

class PlaceModel {
  PlaceModel({
    this.name,
    this.location,
    this.image,
    this.price,
    this.about,
    this.length,
  });

  String? name;
  String? location;
  String? image;
  int? price;
  String? about;
  int? length;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => PlaceModel(
        name: json["name"],
        location: json["location"],
        image: json["image"],
        price: json["price"],
        about: json["about"],
        length: json["length"],
      );
}
