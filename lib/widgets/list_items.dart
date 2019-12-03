import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';

class ListItems extends StatefulWidget {

  final String title;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;

  ListItems({
    @required this.title,
    @required this.animationController,
    this.isSelected = false,
    this.onTap
  });
  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {

  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthAnimation = Tween<double>(begin: 220, end: 70).animate(widget.animationController);
    sizedBoxAnimation = Tween<double>(begin: 10, end: 0).animate(widget.animationController);

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: widget.isSelected ? Colors.transparent.withOpacity(0.3):Colors.transparent,
        ),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 220)
                ? Text(widget.title, style: widget.isSelected ? listTitleSelectedTextStyle : listTitleDefaultTextStyle)
                : Container()
          ],
        ),
      ),
    );
  }
}
