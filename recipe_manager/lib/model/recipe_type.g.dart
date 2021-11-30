// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeTypeAdapter extends TypeAdapter<RecipeType> {
  @override
  final int typeId = 0;

  @override
  RecipeType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RecipeType.food;
      default:
        return RecipeType.food;
    }
  }

  @override
  void write(BinaryWriter writer, RecipeType obj) {
    switch (obj) {
      case RecipeType.food:
        writer.writeByte(0);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
