import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/theme.dart';
import 'package:fast_food/commons/counter.dart';
import 'package:fast_food/services/currency_service.dart';

class DetailsPage extends StatelessWidget {
  String title;
  double price;
  String description;
  String picture;
  String currency;
  DetailsPage({this.title, this.price, this.description, this.picture, this.currency});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 370,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: itemListColor,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              margin: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 60.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            title,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                CurrencyService().getSymbol(currency),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                price.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          CounterItem(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255,244,126,79),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FlatButton.icon(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          //`Icon` to display
                          label: Text(
                            'Add to Car',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                          //`Text` to display
                          onPressed: () {
                            print(1);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 120,
              width: 120,
              height: 120,
              child: Container(
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage(picture)))),
            )
          ],
        ),
    );
  }
}
