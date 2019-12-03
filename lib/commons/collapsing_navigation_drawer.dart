import 'package:flutter/material.dart';
import 'package:fast_food/model/navigation_model.dart';
import 'package:fast_food/theme.dart';
import 'collapsing_list_title.dart';
import 'package:page_transition/page_transition.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() => _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer> with SingleTickerProviderStateMixin{

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
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: drawerBackgroundColor,
        child: Column(
          children: <Widget>[
            CollapsingListTitle(
              title: 'Sarha Pulson',
              icon: Icons.person,
              animationController: _animationController,
            ),
            Divider(color: Colors.grey, height: 40.0,),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter){
                  return Divider(height: 12.0);
                },
                itemBuilder: (context,counter){
                  return CollapsingListTitle(
                      onTap:(){
                        setState(() {
                          //Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: navigationItems[counter].cmp));
                          Navigator.pushNamed(context, navigationItems[counter].cmp);
                          currentSelectedIndex = counter;
                        });
                      },
                      isSelected: currentSelectedIndex == counter,
                      title: navigationItems[counter].title,
                      icon: navigationItems[counter].icon,
                      animationController : _animationController
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed ? _animationController.forward() : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            SizedBox(height: 50.0,),
          ],
        ),
      ),
    );

  }
}

