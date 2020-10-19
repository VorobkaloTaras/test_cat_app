import 'package:flutter/material.dart';

class Fact {
  int length;
  String fact;

  Fact({
    @required this.length,
    @required this.fact,
  });

  factory Fact.fromJson(Map<String, dynamic> json) {
    return Fact(
      length: json['length'] as int,
      fact: json['fact'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'length': length,
    'fact': fact,
  };
}
