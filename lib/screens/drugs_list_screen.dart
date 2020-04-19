import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/screens/drug_details_screen.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';

class DrugListScreen extends StatelessWidget {
  DrugListScreen({
    @required this.currentList,
    @required this.catTitle,
    @required this.catImage,
  });

  final List<DrugDescription> currentList;
  final String catTitle;
  final Image catImage;

  @override
  Widget build(BuildContext context) {
    Comparator<DrugDescription> drugNameComparator =
        (a, b) => a.drugNameExact.compareTo(b.drugNameExact);
    currentList.sort(drugNameComparator);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 160,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(catTitle),
              centerTitle: true,
              background: catImage,
            ),
            actions: mainActions(
              context,
              isSearch: true,
              isFilter: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: Icon(
                  IconData(currentList[index].drugIcon),
                ),
                title: Text(currentList[index].drugNameExact),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: chatButton(context),
    );
  }
}
