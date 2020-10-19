import 'package:test_cat_app/core/cats/cats_data.dart';
import 'package:test_cat_app/core/facts/fact_data.dart';

abstract class HttpFacade {
  Future<Cats> getCatsImages();

  Future<Facts> getCatsFacts();
}
