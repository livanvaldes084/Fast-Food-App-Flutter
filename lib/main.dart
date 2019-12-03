import 'package:fast_food/commons/food.dart';
import 'package:fast_food/commons/pizzas.dart';
import 'package:fast_food/commons/breackfast.dart';
import 'package:fast_food/theme.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        'pizzas' : (context) => PizzasPage(),
        'food' : (context) => FoodPage(),
        'breackfast' : (context) => BreakFastPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

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
