import 'package:flutter/material.dart';

class Article {
  Article({
    @required this.articleTitle,
    this.articleSubtitle,
    this.articleAuthors,
    this.articleAbstract,
    this.articleKeywords,
    @required this.articleIntro,
    @required this.articleBody,
  });

  final String articleTitle;
  final String articleSubtitle;
  final List<String> articleAuthors;
  final String articleAbstract;
  final List<String> articleKeywords;
  final String articleIntro;
  final List<String> articleBody;
}
