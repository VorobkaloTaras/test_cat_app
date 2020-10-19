import 'package:flutter/material.dart';
import 'package:test_cat_app/core/cats/cat.dart';

class Cats {
  List<Cat> list;
  bool success;
  Exception exception;

  Cats({@required this.list, @required this.success, this.exception});

  factory Cats.fromJson(dynamic json) {
    return Cats(
        list: List<Cat>.from(json['list'].map((e) => Cat.fromJson(e)).toSet()),
        success: json['success'] as bool,
        exception: json['exception'] as Exception);
  }

  Map<dynamic, dynamic> toJson() {
    List<Map> list = this.list != null
        ? this.list.map((cat) => cat.toJson()).toList()
        : null;

    return {'list': list, 'success': success, 'exception': exception};
  }
}
