import 'package:flutter/material.dart';

import 'package:anabolic_compendium/data_ru/categories.dart';
import 'package:anabolic_compendium/screens/drugs_list_screen.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anabolic Compendium'),
        centerTitle: true,
        actions: mainActions(
          context,
          isSearch: true,
          isFilter: false,
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 10.0,
          ),
          itemCount: catDataRU.length,
          itemBuilder: (context, int index) {
            return Container(
              height: 80,
              child: Card(
                child: Center(
                  child: ListTile(
                    title: Text(catDataRU[index].titlePrimary),
                    subtitle: Text(catDataRU[index].titleSecondary),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrugListScreen(
                            currentList: catDataRU[index].dataSource,
                            catTitle: catDataRU[index].titlePrimary,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: chatButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              BottomBarIcon(
                Icon(MdiIcons.bookOpenOutline),
              ),
              BottomBarIcon(
                Icon(MdiIcons.textBoxMultipleOutline),
              ),
              SizedBox(
                //TODO: заменить на относительную величину
                width: 30,
              ),
              BottomBarIcon(
                Icon(MdiIcons.filterVariant),
              ),
              BottomBarIcon(
                Icon(MdiIcons.cogOutline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon(this.icon);
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      color: Colors.black38,
      onPressed: () {},
    );
  }
}
