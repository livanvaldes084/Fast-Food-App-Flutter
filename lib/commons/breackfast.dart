import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
class BreakFastPage extends StatefulWidget {
  @override
  _BreakFastPageState createState() => _BreakFastPageState();
}

class _BreakFastPageState extends State<BreakFastPage> {
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
            color: Colors.orange,
          );
        },
      ),
      backgroundColor: Colors.white,
      title: Text(
        "Discover",
        style: TextStyle(color: Colors.orange, fontSize: 24,fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Colors.orange,
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
                  Text('Breakfast'),
                ],
              ),),
          ],
        )
    );
  }
}
