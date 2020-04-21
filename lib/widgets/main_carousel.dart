import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/article.dart';

class MainCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Article> topArticles = [];

    return SingleChildScrollView(
      child: Row(
        children: <Widget>[],
      ),
      scrollDirection: Axis.horizontal,
    );
  }
}
