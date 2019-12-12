import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/theme.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            "Discover",
            style: TextStyle(color: drawerBackgroundColor, fontSize: 24,fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              color: drawerBackgroundColor,
              onPressed: () {
              },
            )
          ],

        ),
        drawer: CollapsingNavigationDrawer(),
        body :Stack(
          children: <Widget>[
            Container(color: Colors.white,
              child: Row(
                children: <Widget>[
                  Text('Food'),
                ],
              ),),
          ],
        )
    );
  }
}
