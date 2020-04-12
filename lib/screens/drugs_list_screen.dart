import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/screens/drug_details_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';

class DrugListScreen extends StatelessWidget {
  DrugListScreen({
    @required this.currentList,
    @required this.catTitle,
  });

  final List<DrugDescription> currentList;
  final String catTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          thickness: 0.3,
        ),
        padding: EdgeInsets.all(4.0),
        itemCount: currentList.length,
        itemBuilder: (context, int index) {
          return ListTile(
            leading: Icon(currentList[index].drugIcon),
            title: Text(currentList[index].drugNameExact),
            trailing: Icon(MdiIcons.bookmarkOutline),
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
