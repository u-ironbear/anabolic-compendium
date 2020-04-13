import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:anabolic_compendium/screens/search_screen.dart';
import 'package:anabolic_compendium/screens/filter_screen.dart';

List<Widget> mainActions(BuildContext ctx) {
  bool isSearch;
  bool isFilter;

  return [
    IconButton(
      icon: Icon(MdiIcons.magnify),
      onPressed: () {
        Navigator.push(
            ctx, MaterialPageRoute(builder: (ctx) => SearchScreen()));
      },
    ),
    IconButton(
      icon: Icon(MdiIcons.filterVariant),
      onPressed: () {
        Navigator.push(
            ctx, MaterialPageRoute(builder: (ctx) => FilterScreen()));
      },
    ),
  ];
}
