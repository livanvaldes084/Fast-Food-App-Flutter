import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/widgets/horizontal_list.dart';
import 'package:fast_food/theme.dart';
import 'package:fast_food/commons/base_bar.dart';

class PizzasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseBar(
        title: 'Discover pizzas'
      ),
      drawer: CollapsingNavigationDrawer(),
      body : Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text('Pizzas',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
            Text('Choose your pizza',style: TextStyle(color: Colors.grey, fontSize: 24.0),),
            ItemList(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}



