import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:anabolic_compendium/models/drug_form_enum.dart';

/// Класс предназначен для описательной части (вкладка «Описание»)
/// и для части, отражающей использование (вкладка «Использование»).
/// Здесь же есть вспомогательные индикаторы.
class DrugDescription with ChangeNotifier {
  DrugDescription({
    @required this.drugNameExact,
    @required this.drugRForm,
    @required this.drugNameAliases,
    @required this.drugGroup,
    @required this.drugAnalogue,
    @required this.eliminationHalfLife,
    @required this.durationOfAction,
    @required this.drugKeyChars,
    @required this.drugDescription,
    @required this.drugUsagePrescription,
    @required this.drugUsageSport,
    @required this.drugUsageWomen,
    @required this.drugInteraction,
    @required this.drugIntakeDosage,
    @required this.drugSpecialConditions,
    @required this.drugCautions,
    @required this.sideEffects,
    this.isSelected = false,
    this.drugRatings,
  });

  /// Свойства, которые отображаются во вкладке «Описание»
  final String drugNameExact;
  final DrugForm drugRForm;
  // Дальше идут свойства, которые выводятся на экран Описание
  final List<String> drugNameAliases;
  final String drugGroup;
  final String drugAnalogue;
  final String eliminationHalfLife;

  // Период активности - это несколько иное:
  // у нандролона деканоата, например, период полувыведения составляет
  // 6-12 дней, а период активности - 2-3 недели
  final String durationOfAction;
  final List<String> drugKeyChars;
  final List<String> drugDescription;

  /// Свойства, которые отображаются во вкладке «Использование»
  // Рекомендации по использованию, идут в таком порядке:
  // для массы
  // для силы
  // для выносливости
  // для предсоревновательной подготовки и «сжигания» жира
  final String drugUsagePrescription;
  final List<String> drugUsageSport;
  final String drugUsageWomen;
  final List<String> drugInteraction;
  final List<String> drugIntakeDosage;
  final String drugSpecialConditions;
  final String drugCautions;
  final List<String> sideEffects;

  IconData get drugIcon => MdiIcons.fromString(describeEnum(drugRForm));

  /// Индикаторы
  bool isSelected;

  void toggleSelectedStatus() {
    isSelected = !isSelected;
    notifyListeners();
    // TODO: здесь же должно быть создание / открытие БД (JSON-файла) и запись препарата
  }

  // Рейтинги лежат в пределах от 0 до 5.
  Map<String, int> drugRatings = {
    'mass': 1,
    'strength': 1,
    'endurance': 1,
    'fatburn': 1,
    'price': 1,
  };
}
