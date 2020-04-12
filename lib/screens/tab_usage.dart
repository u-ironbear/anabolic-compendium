import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/widgets/expo_widget.dart';

class TabUsage extends StatelessWidget {
  const TabUsage({
    @required this.currentDrug,
  });

  final DrugDescription currentDrug;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          expoList(
            title: 'Направления использования',
            listName: currentDrug.drugUsageText,
          ),
          expoList(
            title: 'Оптимальные «партнеры»',
            listName: currentDrug.drugPartners,
          ),
          expoString(
            title: 'Форма выпуска',
            stringName: currentDrug.drugRFormText,
          ),
          expoString(
            title: 'Реальное содержание действующего вещества',
            stringName: currentDrug.realQuantity,
          ),
          expoList(
            title: 'Дозировка',
            listName: currentDrug.drugDosageText,
          ),
          expoString(
            title: 'Предостережения',
            stringName: currentDrug.drugCautions,
          ),
          expoList(
            title: 'Побочные эффекты',
            listName: currentDrug.sideEffects,
          ),
          expoString(
            title: 'Применение женщинами',
            stringName: currentDrug.forWomen,
          ),
          expoString(
            title: 'Срок обнаружения',
            stringName: currentDrug.detectionTime,
          ),
        ],
      ),
    );
  }
}
