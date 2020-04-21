import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 4,
      child: Container(
        height: 50,
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
              // 25-30 — это примерный размер FAB для дюбого экрана.
              width: 30,
            ),
            BottomBarIcon(
              Icon(MdiIcons.calendarEdit),
            ),
            BottomBarIcon(
              Icon(MdiIcons.calendarClock),
            ),
          ],
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
