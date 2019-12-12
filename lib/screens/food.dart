import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/commons/base_bar.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseBar(
            title: 'Discover pizzas'
        ),
        drawer: CollapsingNavigationDrawer(currentSelectedIndex:1),
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
