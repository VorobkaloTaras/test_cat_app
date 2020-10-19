import 'package:flutter/material.dart';
import 'package:test_cat_app/core/facts/fact.dart';

class Facts {
  List<Fact> data;
  bool success;
  Exception exception;

  Facts({@required this.data, @required this.success, this.exception});

  factory Facts.fromJson(Map<String, dynamic> json) {
    Facts facts = Facts(
        data: List<Fact>.from(json['data'].map((fact) => Fact.fromJson(fact))),
        success: true);
    return facts;
  }

  Map<dynamic, dynamic> toJson() {
    List<Map> list = this.data != null
        ? this.data.map((fact) => fact.toJson()).toList()
        : null;

    return {'data': list, 'success': success, 'exception': exception};
  }
}
