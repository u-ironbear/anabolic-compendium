import 'package:flutter/material.dart';

/// Здесь собраны все данные, необходимые для рассчета «курсов».
class DrugIndicators {
  DrugIndicators({
    @required this.drugExactName,
    @required this.drugDosage,
    @required this.halfLifeMinHours,
    @required this.halfLifeMaxHours,
    @required this.ratingMass,
    @required this.ratingStrength,
    @required this.ratingEndurance,
    @required this.ratingFatLoss,
    this.ratingLibido,
    this.testSupression,
    this.waterRetention,
    this.virilization,
    this.agression,
    this.heart,
    this.gyno,
    this.acne,
    this.kidneys,
    this.hunger,
  });

  final String drugExactName;

  /// drugDosage – массив, в котором три элемента:
  /// минимальная, оптимальная (обычная) и максимальная дозы.
  /// Все дозы приведены в мг; доза, например, 50 мкг вводится как 0,05
  final List<double> drugDosage;

  /// Периоды полужизни указаны в часах: 7 суток вводится как 168
  final int halfLifeMinHours;
  final int halfLifeMaxHours;

  /// Рейтинги вводятся целыми числами: это поможет лучше фильтровать препараты.
  /// 0 = полное отсутствие
  /// 1 = слабый эффект
  /// 2 = эффект средней силы
  /// 3 = выраженный эффект
  /// 4 = очень сильный эффект
  /// 5 = опосредованный эффект
  final int ratingMass;
  final int ratingStrength;
  final int ratingEndurance;
  final int ratingFatLoss;
  final int ratingLibido;

  /// Побочные эффекты вводятся целыми числами;
  /// все точно так же, как и с рейтингами.
  final int testSupression;
  final int waterRetention;
  final int virilization;
  final int agression;
  final int heart;
  final int gyno;
  final int acne;
  final int kidneys;
  final int hunger;
}
