import 'package:quiz_app/domain/entities/definition.dart';

class Question {
  Question({
    required this.questionNumber,
    required this.title,
    required this.choices,
    required this.extraInformation
  });
  int questionNumber;
  String title;
  List<String> choices;
   List<Definition> extraInformation;
}
