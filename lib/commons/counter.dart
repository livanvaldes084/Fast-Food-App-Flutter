import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';
class CounterItem extends StatefulWidget {
  @override
  _CounterItemState createState() => _CounterItemState();
}

class _CounterItemState extends State<CounterItem> {
  int _counter = 0;
  void _incrementCounter() {
    // Built in Flutter Method.
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    // Built in Flutter Method.
    setState(() {
      if(_counter > 0)
        _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: drawerBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: SizedBox(
              height: 36.0,
              width: 36.0,
              child: new IconButton(
                  padding: new EdgeInsets.all(0.0),
                  icon: new Icon(Icons.remove, size: 18.0,color: Colors.white),
                  onPressed:_decrementCounter
              )
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          '$_counter',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: drawerBackgroundColor),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: drawerBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: SizedBox(
              height: 36.0,
              width: 36.0,
              child: new IconButton(
                padding: new EdgeInsets.all(0.0),
                icon: new Icon(Icons.add, size: 18.0,color: Colors.white),
                onPressed:_incrementCounter
              )
          ),
        )
      ],
    );
  }
}
