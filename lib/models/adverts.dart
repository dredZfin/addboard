import 'package:hive/hive.dart';

part 'adverts.g.dart';

@HiveType(typeId: 0)
class Advertisement extends HiveObject {
  Advertisement(
      {required this.name,
      required this.author,
      required this.category,
      required this.price,
      required this.publicationDate,
      this.description,
      this.image});
  @HiveField(0)
  late String name;

  @HiveField(1)
  String? description;

  @HiveField(2)
  late String category;

  @HiveField(3)
  late Author author;

  @HiveField(4)
  late DateTime publicationDate;

  @HiveField(5)
  String? image;

  @HiveField(6)
  late Price price;
}

@HiveType(typeId: 1)
class Author extends HiveObject {
  Author({required this.name, required this.phoneNumber});
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String phoneNumber;
}

@HiveType(typeId: 2)
enum Price {
  @HiveField(0)
  free,

  @HiveField(1)
  specific,
}
