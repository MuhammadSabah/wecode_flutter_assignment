class City {
  String id;
  String name;
  String image;

  City({required this.id, required this.name, required this.image});

  factory City.fromData(Map<String, dynamic> data) {
    return City(
      id: data['id'] as String,
      name: data['name'] as String,
      image: data['image'] as String,
    );
  }

  Map<String, dynamic> toData(City city) => <String, dynamic>{
        'id': city.id,
        'name': city.name,
        'image': city.image,
      };
}
