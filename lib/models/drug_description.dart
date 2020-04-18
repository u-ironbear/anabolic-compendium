import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:anabolic_compendium/models/drug_form_enum.dart';

/// Класс предназначен для описательной части (вкладка «Описание»)
/// и для части, отражающей использование (вкладка «Использование»).
/// Индикаторы и торговые марки перенесены в отдельные классы.
class DrugDescription {
  const DrugDescription({
    this.drugRatings,
    this.ratioPriceEffectiveness,
    @required this.drugNameExact,
    @required this.drugRForm,
    @required this.drugNameAliases,
    @required this.drugParent,
    this.drugAnalogue = 'Нет',
    this.drugMetabolites = 'Нет данных',
    this.androgenicAnabolicRatio = 'Нет данных',
    @required this.eliminationHalfLife,
    @required this.durationOfAction,
    @required this.keyChars,
    @required this.drugDescription,
    @required this.drugUsageText,
    @required this.drugPartners,
    @required this.drugRFormText,
    @required this.drugDosageText,
    @required this.drugCautions,
    @required this.forWomen,
    @required this.sideEffects,
    this.realQuantity,
    this.detectionTime = 'Нет данных',
  });

  /// Рейтинги: нигде не отображаются; нужны для фильтров
  // Рейтинги вводятся целыми числами:
  //  0 = полное отсутствие
  //  1 = слабый эффект
  //  2 = эффект средней силы
  //  3 = выраженный эффект
  //  4 = очень сильный эффект
  // Расположены в таком порядке: масса / сила / выносливость / подготовка
  final List<int> drugRatings;

  // Соотношение цена / эффективность также определяется по 5-бальной шкале.
  // Отображается звездочками, так что, быть может, стоит числа заменить изображениями.
  final int ratioPriceEffectiveness;

  /// Свойства, которые отображаются во вкладке «Описание»
  final String drugNameExact;
  final DrugForm drugRForm;
  final List<String> drugNameAliases;
  final String drugParent;
  final String drugAnalogue;
  final String drugMetabolites;
  final String androgenicAnabolicRatio;

  // Период полувыведения указывается именно строкой,
  // например, 7 часов или 4 дня. При этом нужно помнить,
  // что свой период полувыведения есть и у чистого вещества,
  // так, у нандролона он составляет 4,3 часа
  final String eliminationHalfLife;

  // Период активности - это несколько иное:
  // у нандролона деканоата, например,
  // период полувыведения составляет 6-12 дней,
  // а период активности - 2-3 недели
  final String durationOfAction;
  final List<String> keyChars;
  final List<String> drugDescription;

  /// Свойства, которые отображаются во вкладке «Использование»
  // Рекомендации по использованию, идут в таком порядке:
  // для массы
  // для силы
  // для выносливости
  // для предсоревновательной подготовки и «сжигания» жира
  // для антивозрастной терапии
  final List<String> drugUsageText;
  final List<String> drugPartners;
  final String drugRFormText;
  final List<String> drugDosageText;
  final String drugCautions;
  final List<String> sideEffects;
  final String forWomen;

  // Реальное содержание действующего вещества в растворе,
  // только для масляных растворов.
  // Идет сразу после формы выпуска (текст),
  // обозначается как Содержание в растворе
  final String realQuantity;

  // Время обнаружения: сказать, что оно лишь приблизительное;
  // пока решение о том, использовать этот параметр или нет, не принято
  final String detectionTime;

  IconData get drugIcon => MdiIcons.fromString(describeEnum(drugRForm));
}
