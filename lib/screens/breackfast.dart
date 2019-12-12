import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/commons/base_bar.dart';
class BreakFastPage extends StatefulWidget {
  @override
  _BreakFastPageState createState() => _BreakFastPageState();
}

class _BreakFastPageState extends State<BreakFastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseBar(
            title: 'Discover pizzas'
        ),
        drawer: CollapsingNavigationDrawer(currentSelectedIndex:2),
        body :Stack(
          children: <Widget>[
            Container(color: Colors.white,
              child: Row(
                children: <Widget>[
                  Text('Breakfast'),
                ],
              ),),
          ],
        )
    );
  }
}
