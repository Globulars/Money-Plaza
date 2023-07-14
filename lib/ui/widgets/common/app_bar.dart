import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar appBar() {
  return AppBar(
    title: const Text("GeeksforGeeks"),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.comment),
        tooltip: 'Comment Icon',
        onPressed: () {},
      ), //IconButton
      IconButton(
        icon: const Icon(Icons.settings),
        tooltip: 'Setting Icon',
        onPressed: () {},
      ), //IconButton
    ], //<Widget>[]
    backgroundColor: Colors.greenAccent[400],
    elevation: 50.0,
    leading: IconButton(
      icon: const Icon(Icons.menu),
      tooltip: 'Menu Icon',
      onPressed: () {},
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
