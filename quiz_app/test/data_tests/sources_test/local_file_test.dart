

import 'package:quiz_app/data/sources/local_file.dart';
import 'package:test/test.dart';

void main() async  {

  group('one test', () {

      test('value should be incremented', () async {
          LocalFileJSONParserImpl localFileJSONParserImpl = LocalFileJSONParserImpl();
      var x = await localFileJSONParserImpl.loadAllQuestions();
      print(x);

      expect(1, 1);
    });
  });

}