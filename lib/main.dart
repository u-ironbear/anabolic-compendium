import 'package:anabolic_compendium/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:anabolic_compendium/screens/home_screen.dart';

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
          primaryColor: Color(0xFF308882),
          primaryColorDark: Color(0x2C7873),
          primaryColorLight: Color(0xFF389990),
          accentColor: Color(0xFFF7953F),
        ),
        routes: {
          '/': (context) => HomeScreen(),
          UserProfileScreen.routeName: (context) => UserProfileScreen(),
        });
  }
}
