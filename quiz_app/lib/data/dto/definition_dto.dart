import 'dart:convert';
import 'package:quiz_app/data/dto/image_dto.dart';
import 'package:quiz_app/domain/entities/definition.dart';
import 'package:quiz_app/domain/entities/image.dart';

class DefinitionDTO extends Definition {
  DefinitionDTO(
      {required super.title,
      required super.informationBody,
      required super.images});

  factory DefinitionDTO.fromRawJson(String str) =>
      DefinitionDTO.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  factory DefinitionDTO.fromMap(Map<String, dynamic> json) => DefinitionDTO(
      title: json["title"],
      informationBody: json["informationBody"],
      images: json["images"] == null
          ? []
          : List<ImageObject>.from(json["images"]!.map((x) => ImageDTO.fromMap(x))));
  
  factory DefinitionDTO.fromDefinition(Definition definition) => DefinitionDTO(title: definition.title, informationBody: definition.informationBody, images: definition.images);

  Map<String, dynamic> toMap() => {'title': title, 'informationBody': informationBody, 'images': images != null ? [] : List<ImageObject>.from(images.map((e) => ImageDTO.fromImage(e).toMap())) };
}
