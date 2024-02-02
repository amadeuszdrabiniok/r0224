import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
//
// DataModel should extend abstraction or interface. This should be done to keep the code clean and maintainable.
// DataModel (or DataModel abstraction if implemented), could extend package Equatable to enable simple comparison of objects.
// DataModel could implement method DataModel copy({int? id, String? name}) to enable creating new instances of DataModel class with custom data from parent object.
// Constructors of DataModel class should be on top of the class.
//
class DataModel {
  final int id;
  final String name;

  DataModel({required this.id, required this.name});

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
