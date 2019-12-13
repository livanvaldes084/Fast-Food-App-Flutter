import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/screens/hamburger_screen.dart';
import 'package:fast_food/screens/pizzas_screen.dart';
import 'package:fast_food/screens/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        'pizzas' : (context) => PizzazScreen(),
        'hamburgers' : (context) => HamburguersScreen(),
        'settings' : (context) => SettingsScreen()
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
      drawer: CollapsingNavigationDrawer(currentSelectedIndex:0),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: PizzazScreen(),
          ),
        ],
      )
    );
  }
}
