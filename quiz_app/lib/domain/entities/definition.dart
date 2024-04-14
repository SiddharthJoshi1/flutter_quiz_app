import 'package:quiz_app/domain/entities/image.dart';

class Definition{
  Definition({
    required this.title,
    required this.informationBody,
    required this.images,
  });

  String title;
  String informationBody;
  List<ImageObject> images;
}