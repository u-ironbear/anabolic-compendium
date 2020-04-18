import 'package:flutter/material.dart';

class Category {
  Category({
    @required this.dataSource,
    @required this.titlePrimary,
    this.titleSecondary = '',
    this.catColor = Colors.cyan,
    @required this.catImage,
  });

  final List dataSource;
  final String titlePrimary;
  final String titleSecondary;
  final Color catColor;
  final Image catImage;
}
