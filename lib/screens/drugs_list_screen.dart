import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/screens/drug_details_screen.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
            expandedHeight: 200,
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
                  currentList[index].drugIcon,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(currentList[index].drugNameExact),
                trailing: GestureDetector(
                  child: Icon(
                    currentList[index].isSelected
                        ? MdiIcons.bookmark
                        : MdiIcons.bookmarkOutline,
                  ),
                  onTap: () {
                    currentList[index].toggleSelectedStatus();
                  },
                ),
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
              ),
              childCount: currentList.length,
            ),
          ),
        ],
      ),
      floatingActionButton: chatButton(context),
    );
  }
}
