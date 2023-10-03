import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;

  User(this.name, this.age);

  void add(User user) {}
}