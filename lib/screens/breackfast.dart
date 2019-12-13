import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/widgets/horizontal_list.dart';
import 'package:fast_food/model/breackfast_model.dart';
import 'package:fast_food/commons/custom_app_bar.dart';

class BreakFastPage extends StatefulWidget {
  @override
  _BreakFastPageState createState() => _BreakFastPageState();
}

class _BreakFastPageState extends State<BreakFastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CollapsingNavigationDrawer(currentSelectedIndex:0),
      body : Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Breakfast',textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24.0),),
            SizedBox(
              height: 8,
            ),
            Text('Choose your breakfast',style: TextStyle(color: Colors.grey, fontSize: 18.0),),
            SizedBox(
              height: 10,
            ),
            ItemList(items:breackfastItems),
          ],
        ),
      ),
    );
  }
}
