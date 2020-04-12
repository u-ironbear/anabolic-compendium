import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anabolic Chat'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Здесь будет настояший чат!'),
      ),
    );
  }
}
