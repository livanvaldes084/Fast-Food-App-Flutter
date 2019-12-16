import 'package:flutter/material.dart';
import 'package:fast_food/services/currency_service.dart';

class CartItems extends StatefulWidget {
  final String title;
  final String picture;
  final double price;
  final String currency;
  final int cant;
  final Function onTap;
  final ValueChanged<double> parentAction;
  final double total;

  CartItems(
      {@required this.title,
      @required this.picture,
      @required this.price,
      @required this.currency,
      @required this.cant,
      @required this.total,
      this.onTap,this.parentAction});

  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  int _counter = 0;
  void _incrementCounter() {
    // Built in Flutter Method.
    setState(() {
      _counter++;
      widget.parentAction((widget.total+_counter.toDouble()).toDouble());
    });
  }
  void _decrementCounter() {
    // Built in Flutter Method.
    setState(() {
      if(_counter > 0)
        _counter--;
      widget.parentAction((widget.total-_counter.toDouble()).toDouble());
    });
  }
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    children: <Widget>[Image.asset(widget.picture)],
                  ),
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                countProduct(),
                Text(
                  CurrencyService().getSymbol(widget.currency),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  _counter !=0 ? (widget.price * _counter).toString():(widget.price * widget.cant).toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget countProduct() {
    return Column(
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.expand_less,
              size: 32.0,
              color: Colors.white,
            ),
            onPressed: () {
              if(_counter == 0)
                _counter = widget.cant;
              _incrementCounter();
            }),
        Text(
          _counter==0?widget.cant.toString():_counter.toString(),
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
            icon: Icon(
              Icons.expand_more,
              size: 32.0,
              color: Colors.white,
            ),
            onPressed: () {
              if(_counter == 0)
                _counter = widget.cant;
                _decrementCounter();
            }),
      ],
    );
  }
}
