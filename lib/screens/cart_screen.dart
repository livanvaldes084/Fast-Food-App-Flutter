import 'package:flutter/material.dart';
import 'package:fast_food/commons/collapsing_navigation_drawer.dart';
import 'package:fast_food/commons/custom_app_bar.dart';
import 'package:fast_food/theme.dart';
import 'package:fast_food/models/cart_model.dart';
import 'package:fast_food/widgets/vertical_list.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My', counter: 8),
      drawer: CollapsingNavigationDrawer(currentSelectedIndex: 0),
      backgroundColor: drawerBackgroundColor,
      body: Container(
        color: drawerBackgroundColor,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Order',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24.0,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: VerticalList(items:cartItems),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Want to apply Voucher code?',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    'Total',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        'USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '77.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 300,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FlatButton.icon(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: drawerBackgroundColor,
                          ),
                          //`Icon` to display
                          label: Text(
                            'Checkout',
                            style: TextStyle(
                                color: drawerBackgroundColor, fontSize: 18),
                          ),
                          //`Text` to display
                          onPressed: () {
                            print(1);
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
