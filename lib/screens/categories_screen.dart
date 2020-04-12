import 'package:flutter/material.dart';

import 'package:anabolic_compendium/data_ru/categories.dart';
import 'package:anabolic_compendium/screens/drugs_list_screen.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anabolic Compendium'),
        centerTitle: true,
        actions: mainActions(context),
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 10.0,
          ),
          itemCount: catDataRU.length,
          itemBuilder: (context, int index) {
            return Card(
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
            );
          }),
      floatingActionButton: chatButton(context),
    );
  }
}
