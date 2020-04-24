import 'package:flutter/material.dart';

import 'package:anabolic_compendium/widgets/main_actions.dart';
import 'package:anabolic_compendium/widgets/chat_button.dart';
import 'package:anabolic_compendium/widgets/main_drawer.dart';
import 'package:anabolic_compendium/screens/cycles_screen.dart';
import 'package:anabolic_compendium/screens/categories_screen.dart';
import 'package:anabolic_compendium/screens/articles_blog_screen.dart';
import 'package:anabolic_compendium/screens/calendar_screen.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  static const kBColor = Colors.white;

  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Справочник',
      },
      {
        'page': ArticlesBlogScreen(),
        'title': 'Статьи',
      },
      {
        'page': CyclesScreen(),
        'title': 'Готовые «курсы»',
      },
      {
        'page': CalendarScreen(),
        'title': 'Календарь',
      },
    ];
    super.initState();
  }

  void _selectPage(index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        centerTitle: true,
        actions: mainActions(
          context,
          isSearch: true,
          isFilter: false,
        ),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      floatingActionButton: chatButton(context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        backgroundColor: kBColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.black38,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.bookOpenOutline),
            title: Text('Справочник'),
            backgroundColor: kBColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.textBoxMultipleOutline),
            title: Text('Статьи'),
            backgroundColor: kBColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.calendarEdit),
            title: Text('«Курсы»'),
            backgroundColor: kBColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.calendarClock),
            title: Text('Календарь'),
            backgroundColor: kBColor,
          ),
        ],
      ),
    );
  }
}
