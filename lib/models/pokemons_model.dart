import 'dart:convert';

class PokemonsModel {
  List<Pokemon> pokemon;

  PokemonsModel({required this.pokemon});

  Map<String, dynamic> toMap() {
    return {
      'pokemon': pokemon.map((x) => x.toMap()).toList(),
    };
  }

  factory PokemonsModel.fromMap(Map<String, dynamic> map) {
    return PokemonsModel(
      pokemon:
          List<Pokemon>.from(map['pokemon']?.map((x) => Pokemon.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonsModel.fromJson(String source) =>
      PokemonsModel.fromMap(json.decode(source));
}

class Pokemon {
  int id;
  String num;
  String name;
  String img;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  double spawnChance;
  double avgSpawns;
  String spawnTime;
  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'num': num,
      'name': name,
      'img': img,
      'height': height,
      'weight': weight,
      'candy': candy,
      'candyCount': candyCount,
      'egg': egg,
      'spawnChance': spawnChance,
      'avgSpawns': avgSpawns,
      'spawnTime': spawnTime,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id']?.toInt() ?? 0,
      num: map['num'] ?? '',
      name: map['name'] ?? '',
      img: map['img'] ?? '',
      height: map['height'] ?? '',
      weight: map['weight'] ?? '',
      candy: map['candy'] ?? '',
      candyCount: map['candyCount']?.toInt() ?? 0,
      egg: map['egg'] ?? '',
      spawnChance: map['spawnChance']?.toDouble() ?? 0.0,
      avgSpawns: map['avgSpawns']?.toDouble() ?? 0.0,
      spawnTime: map['spawnTime'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));
}
