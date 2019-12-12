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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 24,
            ),
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
              height: 40.0,
              width: 40.0,
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
