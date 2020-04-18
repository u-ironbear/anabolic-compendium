import 'package:flutter/material.dart';

import 'package:anabolic_compendium/models/category.dart';
import 'package:anabolic_compendium/screens/drugs_list_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({this.cardCategory});

  final Category cardCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DrugListScreen(
              currentList: cardCategory.dataSource,
              catTitle: cardCategory.titlePrimary,
            ),
          ),
        );
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: cardCategory.catImage,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: cardCategory.catColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            left: 30,
            bottom: 40,
            child: Text(
              cardCategory.titlePrimary,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
