import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/screens/drug_details_screen.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';

class DrugListScreen extends StatelessWidget {
  DrugListScreen({
    @required this.currentList,
    @required this.catTitle,
  });

  final List<DrugDescription> currentList;
  final String catTitle;

  @override
  Widget build(BuildContext context) {
    Comparator<DrugDescription> drugNameComparator =
        (a, b) => a.drugNameExact.compareTo(b.drugNameExact);
    currentList.sort(drugNameComparator);

    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
        centerTitle: true,
        actions: mainActions(
          context,
          isSearch: true,
          isFilter: true,
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          thickness: 0.2,
        ),
        padding: EdgeInsets.all(4.0),
        itemCount: currentList.length,
        itemBuilder: (context, int index) {
          return ListTile(
            leading: Icon(
              currentList[index].drugIcon,
              color: Colors.amber[700],
            ),
            title: Text(currentList[index].drugNameExact),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrugDetailsScreen(
                    currentDrug: currentList[index],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: chatButton(context),
    );
  }
}
