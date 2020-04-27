import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/widgets/expo_widget.dart';

class TabDescription extends StatelessWidget {
  const TabDescription({
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
            title: 'Другие названия',
            listName: currentDrug.drugNameAliases,
          ),
          expoString(
            title: 'Принадлежность к группе',
            stringName: currentDrug.drugGroup,
          ),
          expoString(
            title: 'Похожие по действию препараты',
            stringName: currentDrug.drugAnalogue,
          ),
          expoString(
            title: 'Период полувыведения',
            stringName: currentDrug.eliminationHalfLife,
          ),
          expoString(
            title: 'Период эффективной активности',
            stringName: currentDrug.durationOfAction,
          ),
          expoList(
            title: 'Ключевые характеристики',
            listName: currentDrug.drugKeyChars,
          ),
          expoList(
            title: 'Краткое описание',
            listName: currentDrug.drugDescription,
          ),
        ],
      ),
    );
  }
}
