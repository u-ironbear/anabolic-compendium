import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/category.dart';

import 'package:anabolic_compendium/data_ru/aas.dart';
import 'package:anabolic_compendium/data_ru/peptides.dart';
import 'package:anabolic_compendium/data_ru/prohormones.dart';
import 'package:anabolic_compendium/data_ru/sarms.dart';

final catDataRU = [
  Category(
    dataSource: aasListRU,
    titlePrimary: 'ААС',
    catColor: Color(0xFF308983).withOpacity(0.8),
    catImage: Image.asset(
      './assets/images/category_1.jpg',
      fit: BoxFit.cover,
    ),
  ),
  Category(
    dataSource: PEPTIDES_RU,
    titlePrimary: 'Пептиды',
    catColor: Color(0xFFF05E37).withOpacity(0.8),
    catImage: Image.asset(
      './assets/images/category_2.jpg',
      fit: BoxFit.cover,
    ),
  ),
  Category(
    dataSource: SARMS_RU,
    titlePrimary: 'SARMs',
    catColor: Color(0xFFF7953F).withOpacity(0.8),
    catImage: Image.asset(
      './assets/images/category_4.jpg',
      fit: BoxFit.cover,
    ),
  ),
  Category(
    dataSource: PROHORMONES_RU,
    titlePrimary: 'Прогормоны',
    catColor: Color(0xFF2F7CE8).withOpacity(0.8),
    catImage: Image.asset(
      './assets/images/category_3.jpg',
      fit: BoxFit.cover,
    ),
  ),
];
