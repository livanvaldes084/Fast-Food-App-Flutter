import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/widgets/horizontal_list.dart';
import 'package:fast_food/models/pizza_model.dart';
import 'package:fast_food/commons/custom_app_bar.dart';

class PizzazScreen extends StatefulWidget {
  @override
  _PizzazScreenState createState() => _PizzazScreenState();
}

class _PizzazScreenState extends State<PizzazScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(counter:8),
      drawer: CollapsingNavigationDrawer(currentSelectedIndex:0),
      body : Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pizzas',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24.0),),
            SizedBox(
              height: 8,
            ),
            Text('Choose your pizza',style: TextStyle(color: Colors.grey, fontSize: 18.0),),
            SizedBox(
              height: 10,
            ),
            ItemList(items:pizzaItems),
          ],
        ),
      ),
    );
  }
}
