import 'package:flutter/material.dart';
import 'package:fast_food/widgets/cart_items.dart';

class VerticalList extends StatefulWidget {
  final List items;
  final ValueChanged<double> parentAction;
  final double total;
  const VerticalList({Key key, this.items,this.parentAction,this.total}) : super(key: key);

  @override
  _VerticalListState createState() => _VerticalListState(items: this.items);
}

class _VerticalListState extends State<VerticalList> {
  List items;
  _VerticalListState({this.items});

  _updateTotal(double num) {
    widget.parentAction(num);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Expanded(
            child: listItems(),
          ),
        ],
      ),
    );
  }

  Widget listItems() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, counter) {
        return CartItems(
            onTap: () {
              setState(() {});
            },
            title: items[counter].title,
            picture: items[counter].picture,
            price: items[counter].price,
            currency: items[counter].currency,
            cant: items[counter].cant,
            parentAction: _updateTotal,
            total: widget.total
        );
      },
      itemCount: items.length,
    );
  }

}
