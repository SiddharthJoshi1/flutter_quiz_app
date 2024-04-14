import 'package:quiz_app/domain/entities/outcome.dart';
import 'package:quiz_app/domain/entities/question.dart';
import 'package:quiz_app/domain/repository/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository{
  @override
  List<Question> getAllQuestions() {
    // TODO: implement getAllQuestions
    throw UnimplementedError();
  }

  @override
  void recordAnswers(List<String> answers) {
    // TODO: implement recordAnswers
  }

  @override
  Outcome validateAnswers() {
    // TODO: implement validateAnswers
    throw UnimplementedError();
  }
  
}