import 'package:quiz_app/domain/entities/outcome.dart';


class ValidateAllAnswers {

  Future<Outcome> validateAllAnswers() async {
   
    return Outcome(title: "title", outcomeBody: "outcome", recommendation: []);
  }
}
