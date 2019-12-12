import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';

AppBar BaseBar({String title}){
  return AppBar(
    elevation: 0.0,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.view_comfy),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          color: drawerBackgroundColor,
        );
      },
    ),
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: drawerBackgroundColor, fontSize: 30,fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.add_shopping_cart),
        color: drawerBackgroundColor,
        onPressed: () {
        },
      )
    ],

  );
}
