import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/widgets/horizontal_list.dart';
import 'package:fast_food/models/hamburger_model.dart';
import 'package:fast_food/commons/custom_app_bar.dart';

class HamburguersScreen extends StatefulWidget {
  @override
  _HamburguersScreenState createState() => _HamburguersScreenState();
}

class _HamburguersScreenState extends State<HamburguersScreen> {
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
            Text('Burgers',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24.0),),
            SizedBox(
              height: 8,
            ),
            Text('Choose your burger',style: TextStyle(color: Colors.grey, fontSize: 18.0),),
            SizedBox(
              height: 10,
            ),
            ItemList(items:hamburgerItems),
          ],
        ),
      ),
    );
  }
}

