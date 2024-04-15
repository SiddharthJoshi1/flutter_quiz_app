import 'dart:convert';
import 'package:quiz_app/data/dto/definition_dto.dart';
import 'package:quiz_app/domain/entities/question.dart';

class QuestionDTO extends Question {
  QuestionDTO(
      {required super.questionNumber,
      required super.title,
      required super.choices,
      required super.extraInformation});

      factory QuestionDTO.fromRawJson(String str) =>
      QuestionDTO.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  factory QuestionDTO.fromMap(Map<String, dynamic> json) => QuestionDTO(
      questionNumber: json["questionNumber"],
      title: json["title"],
      choices: json["choices"] != null ? List<String>.from(json["choices"].map((x) => x))  : [],
      extraInformation: json["extraInformation"] == null
          ? []
          : List<DefinitionDTO>.from(
              json["extraInformation"]!.map((x) => DefinitionDTO.fromMap(x))));


  Map<String, dynamic> toMap() => {
        'questionNumber': questionNumber,
        'title': title,
        'choices': List<String>.from(choices.map((e) => e)),
        'images': 
            List<DefinitionDTO>.from(
                extraInformation.map((e) => DefinitionDTO.fromDefinition(e).toMap()))
      };
 
}
