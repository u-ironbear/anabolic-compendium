import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/drug_description.dart';
import 'package:anabolic_compendium/screens/drug_details_screen.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrugListScreen extends StatefulWidget {
  DrugListScreen({
    @required this.currentList,
    @required this.catTitle,
    @required this.catImage,
  });

  final List<DrugDescription> currentList;
  final String catTitle;
  final Image catImage;
  IconData _trailingIcon = MdiIcons.bookmarkOutline;

  @override
  _DrugListScreenState createState() => _DrugListScreenState();
}

class _DrugListScreenState extends State<DrugListScreen> {
  @override
  Widget build(BuildContext context) {
    Comparator<DrugDescription> drugNameComparator =
        (a, b) => a.drugNameExact.compareTo(b.drugNameExact);
    widget.currentList.sort(drugNameComparator);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.catTitle),
              centerTitle: true,
              background: widget.catImage,
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
                  widget.currentList[index].drugIcon,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(widget.currentList[index].drugNameExact),
                trailing: GestureDetector(
                  child: Icon(widget._trailingIcon),
                  onTap: () {
                    setState(() {});
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DrugDetailsScreen(
                        currentDrug: widget.currentList[index],
                      ),
                    ),
                  );
                },
              ),
              childCount: widget.currentList.length,
            ),
          ),
        ],
      ),
      floatingActionButton: chatButton(context),
    );
  }
}
