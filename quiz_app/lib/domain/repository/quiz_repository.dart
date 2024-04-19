
import 'package:quiz_app/domain/entities/question.dart';

abstract class QuizRepository{
  Future<List<Question>> getAllQuestions();
}