import 'dart:convert';
import 'package:quiz_app/domain/entities/image.dart';


class ImageDTO extends ImageObject {
  ImageDTO({required super.title, required super.imageUrl});

  //json 
  factory ImageDTO.fromRawJson(String str) =>
      ImageDTO.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());


  factory ImageDTO.fromMap(Map<String, dynamic> json )=> ImageDTO(title: json["title"], imageUrl: json["imageUrl"]);

  factory ImageDTO.fromImage(ImageObject image) =>  ImageDTO(title: image.title, imageUrl: image.imageUrl);

  Map<String, dynamic> toMap() => {'title': title, 'imageUrl': imageUrl};
}
