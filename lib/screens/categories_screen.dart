import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:anabolic_compendium/data_ru/categories.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_actions.dart';
import 'package:anabolic_compendium/widgets/category_card.dart';
import 'package:anabolic_compendium/widgets/main_bottom_bar.dart';

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
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: 12,
                  left: 15,
                ),
                child: Text(
                  'Категории',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CategoryCard(
                      cardCategory: catDataRU[0],
                    ),
                  ),
                  Expanded(
                    child: CategoryCard(
                      cardCategory: catDataRU[1],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CategoryCard(
                      cardCategory: catDataRU[2],
                    ),
                  ),
                  Expanded(
                    child: CategoryCard(
                      cardCategory: catDataRU[3],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Text(
                  'Советы и подсказки',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 40,
                ),
                color: Colors.black12,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: chatButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
