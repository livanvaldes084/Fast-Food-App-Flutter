import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';

class ListItems extends StatefulWidget {
  final String title;
  final String picture;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;

  ListItems(
      {@required this.title,
      @required this.picture,
      @required this.animationController,
      this.isSelected = false,
      this.onTap});

  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthAnimation =
        Tween<double>(begin: 220, end: 70).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: widget.isSelected ? drawerBackgroundColor : itemListColor,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        margin: EdgeInsets.only(right: 8.0),
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              widget.picture,
            )
          ],
        ),
      ),
    );
  }
}
