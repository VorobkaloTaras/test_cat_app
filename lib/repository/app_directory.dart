import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class AppDirectory {
  static Directory _directory;

  AppDirectory() {
    init();
  }

  static init() async {
    if (_directory == null) {
      _directory = await getApplicationDocumentsDirectory();
    }
  }

  String get path => _directory.path;
}
