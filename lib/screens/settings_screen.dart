import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/commons/custom_app_bar.dart';
import 'package:fast_food/theme.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(counter:8),
      drawer: CollapsingNavigationDrawer(currentSelectedIndex:0),
      backgroundColor: drawerBackgroundColor,
      body : Container(
        color: drawerBackgroundColor,
        padding: EdgeInsets.all(20.0),
        child: Column(

        ),
      ),
    );
  }
}
