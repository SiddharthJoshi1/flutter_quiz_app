
import 'package:quiz_app/domain/entities/outcome.dart';
import 'package:quiz_app/domain/entities/question.dart';

abstract class QuizRepository{
  List<Question> getAllQuestions();
  void recordAnswers(List<String> answers);
  Outcome validateAnswers();
}