class User {
  String id;
  final String? name;
  final String? age;
  final String? type;

  User({
    required this.id,
    this.age,
    this.name,
    this.type,
  });

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'age': age, 'class': type};

  static User fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      name: json['name'] ?? '',
      age: json['age'] ?? '',
      type: json['class'] ?? '');
}
