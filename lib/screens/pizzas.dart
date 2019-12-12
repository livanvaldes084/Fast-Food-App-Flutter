import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/widgets/horizontal_list.dart';
import 'package:fast_food/commons/base_bar.dart';

class PizzasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseBar(
        title: 'Discover pizzas'
      ),
      drawer: CollapsingNavigationDrawer(currentSelectedIndex:0),
      body : Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pizzas',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30.0),),
            SizedBox(
              height: 8,
            ),
            Text('Choose your pizza',style: TextStyle(color: Colors.grey, fontSize: 24.0),),
            SizedBox(
              height: 10,
            ),
            ItemList(),
          ],
        ),
      ),
    );
  }
}



