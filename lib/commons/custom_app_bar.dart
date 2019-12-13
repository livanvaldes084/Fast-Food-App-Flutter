import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key, this.title: 'Discover'})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  final String title;

  @override
  final Size preferredSize; // default is 56.0
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {},
          )
        ]);
  }
}
