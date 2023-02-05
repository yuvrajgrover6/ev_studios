import 'dart:convert';

class NewsArticle {
  Name name;
  Images images;
  String gender;
  String species;
  String homePlanet;
  String occupation;
  List<String> sayings;
  int id;
  String age;
  NewsArticle({
    required this.name,
    required this.images,
    required this.gender,
    required this.species,
    required this.homePlanet,
    required this.occupation,
    required this.sayings,
    required this.id,
    required this.age,
  });

  NewsArticle copyWith({
    Name? name,
    Images? images,
    String? gender,
    String? species,
    String? homePlanet,
    String? occupation,
    List<String>? sayings,
    int? id,
    String? age,
  }) {
    return NewsArticle(
      name: name ?? this.name,
      images: images ?? this.images,
      gender: gender ?? this.gender,
      species: species ?? this.species,
      homePlanet: homePlanet ?? this.homePlanet,
      occupation: occupation ?? this.occupation,
      sayings: sayings ?? this.sayings,
      id: id ?? this.id,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name.toMap(),
      'images': images.toMap(),
      'gender': gender,
      'species': species,
      'homePlanet': homePlanet,
      'occupation': occupation,
      'sayings': sayings,
      'id': id,
      'age': age,
    };
  }

  factory NewsArticle.fromMap(Map<String, dynamic> map) {
    return NewsArticle(
      name: Name.fromMap(map['name'] as Map<String, dynamic>),
      images: Images.fromMap(map['images'] as Map<String, dynamic>),
      gender: map['gender'] as String? ?? '',
      species: map['species'] as String? ?? '',
      homePlanet: map['homePlanet'] as String? ?? '',
      occupation: map['occupation'] as String? ?? '',
      sayings: List<String>.from((map['sayings'])),
      id: map['id'] as int? ?? 0,
      age: map['age'] as String? ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsArticle.fromJson(String source) =>
      NewsArticle.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Name {
  String first;
  String middle;
  String last;
  Name({
    required this.first,
    required this.middle,
    required this.last,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': first,
      'middle': middle,
      'last': last,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      first: map['first'] as String? ?? '',
      middle: map['middle'] as String? ?? '',
      last: map['last'] as String? ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) =>
      Name.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Images {
  String headShot;
  String main;
  Images({
    required this.headShot,
    required this.main,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'head-shot': headShot,
      'main': main,
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      headShot: map['head-shot'] as String? ?? '',
      main: map['main'] as String? ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) =>
      Images.fromMap(json.decode(source) as Map<String, dynamic>);
}
