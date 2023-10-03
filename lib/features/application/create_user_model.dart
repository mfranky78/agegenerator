


class CreateUserModel {
  final String name;
   int? age;

  CreateUserModel({required this.name, required age});

  factory CreateUserModel.fromJson(Map<String, dynamic> json) {
    return CreateUserModel(name: json['name'],age: json['age']);
  }
}
