import 'package:quiz_app/data/dto/question_dto.dart';
import 'dart:io';
import 'dart:convert';

const String localQuestionJSONPath = 'questions.json';

abstract class LocalFileJSONParser {
Future<List<QuestionDTO>> loadAllQuestions();
}

class LocalFileJSONParserImpl implements LocalFileJSONParser {
  @override
  Future<List<QuestionDTO>> loadAllQuestions() async {
    File jsonFile = File('lib/data/storedData/questions.json');
    String jsonFileStringContents = await jsonFile.readAsString();
    var decodedJSON = jsonDecode(jsonFileStringContents);
    List<QuestionDTO> questionList = [];
    for (var i in decodedJSON["questions"]) {
       questionList.add(QuestionDTO.fromMap(i));
    }
    return questionList;
  }
  
}