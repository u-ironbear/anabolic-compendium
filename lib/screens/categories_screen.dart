import 'package:flutter/material.dart';

import 'package:anabolic_compendium/data_ru/categories.dart';
import 'package:anabolic_compendium/screens/drugs_list_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(6),
          padding: EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          height: 100,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black26,
              width: 0.1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4.0,
                spreadRadius: 0.5,
                offset: Offset(
                  2.0,
                  4.0,
                ),
              ),
            ],
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundColor: catDataRU[index].catColor,
              child: Text(
                '30',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(catDataRU[index].titlePrimary),
            subtitle: Text(catDataRU[index].titleSecondary),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrugListScreen(
                    currentList: catDataRU[index].dataSource,
                    catTitle: catDataRU[index].titlePrimary,
                    catImage: catDataRU[index].catImage,
                  ),
                ),
              );
            },
          ),
        ),
        itemCount: catDataRU.length,
      ),
    );
  }
}
