import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';
import 'package:fast_food/screens/cart_screen.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key, this.title: 'Discover', this.counter: 0})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  final String title;
  int counter;

  @override
  final Size preferredSize; // default is 56.0
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        actions: <Widget>[
          new Stack(
            children: <Widget>[
              new IconButton(
                  icon: Icon(Icons.shopping_basket,size: 32.0,),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()),
                    );
                    setState(() {
                      counter = 0;
                    });
                  }),
              counter != 0
                  ? new Positioned(
                      right: 2,
                      top: 7,
                      child: new Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.circle,
                        ),
                        child: SizedBox(
                            height: 24.0,
                            width: 24.0,
                            child: Text(
                              '$counter',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            )
                        ),
                      ),
                    )
                  : new Container()
            ],
          ),
        ]);
  }
}
