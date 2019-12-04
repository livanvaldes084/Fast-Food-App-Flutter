import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';
class ItemsLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
          MyListView(
            img_location: 'assets/img/pizza.png',
            img_caption: 'Pizza',
          ),
        ],
      ),
    );
  }
}

class MyListView extends StatelessWidget {

  final String img_location;
  final String img_caption;
  MyListView({this.img_location,this.img_caption});

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: itemListColor,
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: InkWell(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: myBoxDecoration(),
          child: ListTile(
            title:Image.asset(img_location),
          ),
        ),
      ),
    );
  }
}
