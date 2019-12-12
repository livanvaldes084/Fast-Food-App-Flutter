import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';
import 'package:fast_food/model/pizza_model.dart';
import 'package:fast_food/widgets/list_items.dart';
import 'package:fast_food/widgets/detail_items.dart';


class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> with SingleTickerProviderStateMixin{
  double maxWidth = 20;
  double minWidth = 20;
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
    return Column(
            children: <Widget>[
              Container(
                height: 90,
                child:  ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,counter){
                    return ListItems(
                        onTap:(){
                          setState(() {
                            currentSelectedIndex = counter;
                          });
                        },
                        isSelected: currentSelectedIndex == counter,
                        title: pizzaItems[counter].title,
                        picture: pizzaItems[counter].picture,
                        animationController : _animationController
                    );
                  },
                  itemCount: pizzaItems.length,

                ),
              ),
              SizedBox(
                height: 20,
              ),
              DetailsPage(title: pizzaItems[currentSelectedIndex].title,price: pizzaItems[currentSelectedIndex].price,description: pizzaItems[currentSelectedIndex].description,picture: pizzaItems[currentSelectedIndex].picture)
            ],
          );

  }
}

