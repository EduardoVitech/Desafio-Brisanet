import 'dart:convert';

class PokemonModel {
  String id;
  int num;
  String name;
  String img;
  List type;
  PokemonModel({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'num': num,
      'name': name,
      'img': img,
      'type': type,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'] ?? '',
      num: map['num']?.toInt() ?? 0,
      name: map['name'] ?? '',
      img: map['img'] ?? '',
      type: List.from(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));
}
