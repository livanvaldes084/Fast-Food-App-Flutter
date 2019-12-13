import 'package:flutter/material.dart';
import 'package:fast_food/widgets/cart_items.dart';

class VerticalList extends StatefulWidget {
  final List items;
  VerticalList({this.items});

  @override
  _VerticalListState createState() => _VerticalListState(items:this.items);
}

class _VerticalListState extends State<VerticalList> {
  List items;
  _VerticalListState({this.items});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child:  ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context,counter){
              return CartItems(
                  onTap:(){
                    setState(() {
                    });
                  },
                  title: items[counter].title,
                  picture: items[counter].picture
              );
            },
            itemCount: items.length,

          ),
        ),],
    );
  }
}
