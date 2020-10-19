import 'package:injectable/injectable.dart';
import 'package:test_cat_app/http/http_service.dart';

@module
abstract class HttpServiceInjectableModule {
  @lazySingleton
  HttpService get httpService => HttpService();
}