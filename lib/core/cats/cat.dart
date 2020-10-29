import 'dart:core';

import 'package:flutter/material.dart';

class Cat {
  final List<Object> breeds;
  final String id;
  final String url;
  final int width;
  final int height;
  bool isFavorite = false;
  String filePath;

  Cat({
    @required this.breeds,
    @required this.id,
    @required this.url,
    @required this.width,
    @required this.height,
    this.filePath,
    this.isFavorite,
  });

  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      breeds: json['breeds'] as List<Object>,
      id: json['id'] as String,
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      filePath: json['filePath'] as String,
      isFavorite:
          json['isFavorite'] != null ? json['isFavorite'] as bool : false,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'width': width,
        'height': height,
        'isFavorite': isFavorite,
        'filePath': filePath,
      };
}
