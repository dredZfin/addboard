// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adverts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AdvertisementAdapter extends TypeAdapter<Advertisement> {
  @override
  final int typeId = 0;

  @override
  Advertisement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Advertisement(
      name: fields[0] as String,
      author: fields[3] as Author,
      category: fields[2] as String,
      price: fields[6] as Price,
      publicationDate: fields[4] as DateTime,
      description: fields[1] as String?,
      image: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Advertisement obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.author)
      ..writeByte(4)
      ..write(obj.publicationDate)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdvertisementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthorAdapter extends TypeAdapter<Author> {
  @override
  final int typeId = 1;

  @override
  Author read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Author(
      name: fields[0] as String,
      phoneNumber: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Author obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PriceAdapter extends TypeAdapter<Price> {
  @override
  final int typeId = 2;

  @override
  Price read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Price.free;
      case 1:
        return Price.specific;
      default:
        return Price.free;
    }
  }

  @override
  void write(BinaryWriter writer, Price obj) {
    switch (obj) {
      case Price.free:
        writer.writeByte(0);
        break;
      case Price.specific:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
