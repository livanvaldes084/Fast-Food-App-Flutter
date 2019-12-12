import 'package:fast_food/widgets/list_items.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/model/pizza_model.dart';
import 'package:fast_food/widgets/horizontal_list.dart';
import 'package:fast_food/theme.dart';

class PizzasPage extends StatefulWidget {
  @override
  _PizzasPageState createState() => _PizzasPageState();
}

class _PizzasPageState extends State<PizzasPage> with SingleTickerProviderStateMixin{

  double maxWidth = 220;
  double minWidth = 70;
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth).animate(_animationController);
  }
  int getState(){
    return currentSelectedIndex;
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _animationController, builder: (context, widget) => getWidget(context,widget),);
  }

  Widget getWidget(context,widget){
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
            style: TextStyle(color: Colors.orange, fontSize: 30,fontWeight: FontWeight.bold),
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
        body : Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Pizzas',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
                    Text('Choose your pizza',style: TextStyle(color: Colors.grey, fontSize: 24.0),),
                  ],
                ),
              ),
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



