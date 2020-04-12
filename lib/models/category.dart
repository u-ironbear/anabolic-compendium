import 'package:flutter/material.dart';

class Category {
  final List dataSource;
  final String titlePrimary;
  final String titleSecondary;
  final Color catColor;
  final Image catImage;

  Category({
    @required this.dataSource,
    @required this.titlePrimary,
    this.titleSecondary = '',
    this.catColor = Colors.cyan,
    @required this.catImage,
  });
}
