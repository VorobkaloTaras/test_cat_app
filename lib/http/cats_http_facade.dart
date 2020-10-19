import 'package:injectable/injectable.dart';
import 'package:test_cat_app/core/cats/cats_data.dart';
import 'package:test_cat_app/core/facts/fact_data.dart';
import 'package:test_cat_app/http/http_facade.dart';
import 'package:test_cat_app/http/http_service.dart';

@prod
@LazySingleton(as: HttpFacade)
class CatsHttpFacade implements HttpFacade {
  final HttpService _httpService;

  CatsHttpFacade(
    this._httpService,
  );

  @override
  Future<Cats> getCatsImages() {
    return _httpService.getCats();
  }

  @override
  Future<Facts> getCatsFacts() {
    return _httpService.getFacts();
  }
}
