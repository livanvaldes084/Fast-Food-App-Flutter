import 'package:flutter/material.dart';
import 'package:fast_food/screens/food.dart';
import 'package:fast_food/screens/pizzas.dart';
import 'package:fast_food/screens/breackfast.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        'pizzas' : (context) => PizzasPage(),
        'food' : (context) => FoodPage(),
        'breackfast' : (context) => BreakFastPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CollapsingNavigationDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: PizzasPage(),
          ),
        ],
      )
    );
  }
}
