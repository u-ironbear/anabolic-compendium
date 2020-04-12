import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:anabolic_compendium/screens/chat_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

FloatingActionButton chatButton(BuildContext ctx) {
  return FloatingActionButton(
    child: Icon(
      MdiIcons.forumOutline,
      color: Colors.white,
    ),
    onPressed: () {
      Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => ChatScreen()));
    },
  );
}
