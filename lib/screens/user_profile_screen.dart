import 'package:flutter/material.dart';

import 'package:anabolic_compendium/widgets/main_actions.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/userProfile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль пользователя'),
        centerTitle: true,
        actions: mainActions(
          context,
          isSearch: true,
          isFilter: false,
        ),
      ),
      body: Center(
        child: Text('Профиль пользователя'),
      ),
    );
  }
}
