import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

ExpandableNotifier expoList({title, listName}) {
  return ExpandableNotifier(
    child: Card(
      child: ScrollOnExpand(
        scrollOnExpand: true,
        scrollOnCollapse: false,
        child: ExpandablePanel(
          theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToCollapse: true,
            iconColor: Colors.amber,
          ),
          header: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (String currentStr in listName)
                Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 10,
                    bottom: 6,
                  ),
                  child: Text(currentStr),
                ),
            ],
          ),
        ),
      ),
    ),
  );
}

ExpandableNotifier expoString({title, stringName}) {
  return ExpandableNotifier(
    child: Card(
      child: ScrollOnExpand(
        scrollOnExpand: true,
        scrollOnCollapse: false,
        child: ExpandablePanel(
          theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToCollapse: true,
            iconColor: Colors.amber,
          ),
          header: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          expanded: Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 10,
              bottom: 6,
            ),
            child: Text(stringName),
          ),
        ),
      ),
    ),
  );
}
