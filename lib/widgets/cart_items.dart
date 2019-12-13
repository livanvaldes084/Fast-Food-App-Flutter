import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';

class CartItems extends StatefulWidget {

  final String title;
  final String picture;
  final Function onTap;

  CartItems({
    @required this.title,
    @required this.picture,
    this.onTap
  });
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              margin: EdgeInsets.only(right: 10.0),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(widget.picture)
                ],
              ),
            ),
            Text(
              widget.title,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
