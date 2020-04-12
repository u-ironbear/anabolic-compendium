import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/screens/tab_description.dart';
import 'package:anabolic_compendium/screens/tab_usage.dart';

class DrugDetailsScreen extends StatelessWidget {
  const DrugDetailsScreen({
    @required this.currentDrug,
  });

  final DrugDescription currentDrug;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(currentDrug.drugNameExact),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'ОПИСАНИЕ',
              ),
              Tab(
                text: 'ПРИМЕНЕНИЕ',
              ),
              Tab(
                text: 'ПРЕПАРАТЫ',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TabDescription(currentDrug: currentDrug),
            TabUsage(currentDrug: currentDrug),
            Center(
              child: FlatButton(
                child: Text(
                  'Купить PRO-версию',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        floatingActionButton: chatButton(context),
      ),
    );
  }
}
