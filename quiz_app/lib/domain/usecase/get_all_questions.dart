import 'package:quiz_app/domain/entities/question.dart';
import 'package:quiz_app/domain/repository/quiz_repository.dart';

class GetAllQuestions{
  GetAllQuestions({
    required QuizRepository repository
  }) : _repository = repository;

  final QuizRepository _repository;

  Future<List<Question>> getAllQuestions() async {
    final list = await _repository.getAllQuestions();
    return list;
  } 
}