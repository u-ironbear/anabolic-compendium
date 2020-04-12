import 'package:flutter/material.dart';

class DrugBrand {
  DrugBrand({
    @required this.drugId,
    @required this.drugName,
    @required this.drugActiveSubstance,
    @required this.drugManufacturer,
    @required this.drugPackage,
    @required this.drugConcentration,
    this.drugRating,
    this.drugQuality,
  });

  final int drugId;
  final String drugName;
  final String drugActiveSubstance;
  final String drugManufacturer;

  /// Упаковка: например, флакон 10 мл; ампула 1 мл, 5 ампул в упаковке
  final String drugPackage;
  //TODO: концентрация ДВ; возможно, стоит как-то поменять подход
  //TODO: в том числе вставив DrugForm
  final String drugConcentration;

  /// Рейтинг препарата, по 10-бальной шкале, звездочками
  /// рейтинг могут выставлять и пользователи в том числе
  /// не является обязательным параметром
  final int drugRating;

  /// Оценка качества препарата, по 10-бальной шкале
  /// Имеет смысл только по результатам лабораторного анализа
  /// то есть, не является обязательным параметром
  final int drugQuality;
}
