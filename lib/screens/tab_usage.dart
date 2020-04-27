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
          expoString(
            title: 'Показания к применению',
            stringName: currentDrug.drugUsagePrescription,
          ),
          expoList(
            title: 'Применение в спорте',
            listName: currentDrug.drugUsageSport,
          ),
          expoString(
            title: 'Применение женщинами',
            stringName: currentDrug.drugUsageWomen,
          ),
          expoList(
            title: 'Сочетание с другими препаратами',
            listName: currentDrug.drugInteraction,
          ),
          expoList(
            title: 'Способ введения и дозы',
            listName: currentDrug.drugIntakeDosage,
          ),
          expoString(
            title: 'Особые условия',
            stringName: currentDrug.drugSpecialConditions,
          ),
          expoString(
            title: 'Предостережения',
            stringName: currentDrug.drugCautions,
          ),
          expoList(
            title: 'Побочные эффекты',
            listName: currentDrug.sideEffects,
          ),
        ],
      ),
    );
  }
}
