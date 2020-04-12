import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:anabolic_compendium/screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Anabolic Compendium',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.blueGrey[600],
        primaryColorDark: Colors.blueGrey[900],
        primaryColorLight: Colors.blueGrey[300],
        accentColor: Colors.amber[600],
        // TODO Добавить шрифты, заодно прописав их в pubspec.yaml
      ),
      home: CategoriesScreen(),
    );
  }
}
