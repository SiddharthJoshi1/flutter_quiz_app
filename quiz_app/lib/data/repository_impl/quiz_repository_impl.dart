import 'package:quiz_app/data/sources/local_file.dart';
import 'package:quiz_app/domain/entities/question.dart';
import 'package:quiz_app/domain/repository/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository {
  final LocalFileJSONParser _localFileJSONParser;

  QuizRepositoryImpl({required LocalFileJSONParser localFileJSONParser})
      : _localFileJSONParser = localFileJSONParser;

  @override
  Future<List<Question>> getAllQuestions() async {
    return await _localFileJSONParser.loadAllQuestions();
  }
}
