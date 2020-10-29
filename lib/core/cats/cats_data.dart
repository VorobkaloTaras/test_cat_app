import 'package:flutter/material.dart';
import 'package:test_cat_app/core/cats/cat.dart';

class Cats {
  int paginationPage;
  int paginationLimit;
  int paginationCount;
  List<Cat> list;
  bool success;
  Exception exception;

  Cats({
    @required this.list,
    @required this.success,
    this.exception,
    this.paginationPage,
    this.paginationLimit,
    this.paginationCount,
  });

  factory Cats.fromJson(dynamic json) {
    return Cats(
      list: List<Cat>.from(json['list'].map((e) => Cat.fromJson(e)).toSet()),
      success: json['success'] as bool,
      exception: json['exception'] as Exception,
      paginationPage: json['paginationPage'] as int,
      paginationLimit: json['paginationLimit'] as int,
      paginationCount: json['paginationCount'] as int,
    );
  }

  Map<dynamic, dynamic> toJson() {
    List<Map> list = this.list != null
        ? this.list.map((cat) => cat.toJson()).toList()
        : null;

    return {
      'list': list,
      'success': success,
      'exception': exception,
      'paginationPage': paginationPage,
      'paginationLimit': paginationLimit,
      'paginationCount': paginationCount
    };
  }
}
