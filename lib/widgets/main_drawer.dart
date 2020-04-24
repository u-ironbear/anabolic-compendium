import 'package:anabolic_compendium/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black12,
        constraints: BoxConstraints.expand(),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            drawerMenuItem(
              'Профиль пользователя',
              MdiIcons.accountCircleOutline,
              () {
                Navigator.pushNamed(context, UserProfileScreen.routeName);
              },
            ),
            drawerMenuItem('Выбрать язык', MdiIcons.web, () {}),
            drawerMenuItem('Избранное', MdiIcons.bookmarkOutline, () {}),
            drawerMenuItem('Уведомления', MdiIcons.bellOutline, () {}),
            drawerMenuItem('О приложении', MdiIcons.application, () {}),
            drawerMenuItem(
                'Купить PRO-версию', MdiIcons.creditCardOutline, () {}),
          ],
        ),
      ),
    );
  }
}

Widget drawerMenuItem(
    String itemTitle, IconData itemIcon, Function tapHandler) {
  return ListTile(
    leading: Icon(itemIcon),
    title: Text(
      itemTitle,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    onTap: tapHandler,
  );
}
