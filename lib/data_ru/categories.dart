import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/category.dart';

import 'package:anabolic_compendium/data_ru/classic_aas.dart';
import 'package:anabolic_compendium/data_ru/designer_aas.dart';
import 'package:anabolic_compendium/data_ru/peptides.dart';
import 'package:anabolic_compendium/data_ru/prohormones.dart';
import 'package:anabolic_compendium/data_ru/sarms.dart';

final catDataRU = [
  Category(
    dataSource: kCLASSIC_AAS_RU,
    titlePrimary: '«Классические» ААС',
    titleSecondary: 'Тестостерон, нандролон etc.',
    catColor: Colors.blueGrey[300],
    catImage: Image.asset('./assets/images/article_1'),
  ),
  Category(
    dataSource: DESIGNER_AAS_RU,
    titlePrimary: '«Дизайнерские» ААС',
    titleSecondary: 'Редкие и специально созданные препараты',
    catColor: Colors.blueGrey[400],
    catImage: Image.asset('./assets/images/article_2'),
  ),
  Category(
    dataSource: PEPTIDES_RU,
    titlePrimary: 'Пептидные препараты',
    titleSecondary: 'В том числе гормон роста, ИФР-1, МФР',
    catColor: Colors.blueGrey[500],
    catImage: Image.asset('./assets/images/article_3'),
  ),
  Category(
    dataSource: PROHORMONES_RU,
    titlePrimary: 'Прогормоны и простероиды',
    titleSecondary: 'Предшественники гормонов и ААС',
    catColor: Colors.blueGrey[600],
    catImage: Image.asset('./assets/images/article_4'),
  ),
  Category(
    dataSource: SARMS_RU,
    titlePrimary: 'SARMs',
    titleSecondary: 'Селективные модуляторы андрогенных рецепторов',
    catColor: Colors.blueGrey[700],
    catImage: Image.asset('./assets/images/article_5'),
  )
];
