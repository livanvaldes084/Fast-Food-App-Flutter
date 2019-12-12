import 'package:flutter/material.dart';

class HamburgerModel{
  String title;
  String picture;
  String price;
  String description;
  HamburgerModel({this.title, this.picture, this.price, this.description});
}

List<HamburgerModel> hamburgerItems = [
  HamburgerModel(title:"Neapolitan Hamburger", picture:"assets/img/1_hamburger.png", price: '5.00', description: 'Neapolitan is the original pizza. This delicious pie dates all the way back to 18th century in Naples, Italy. '),
  HamburgerModel(title:"Chicago Hamburger", picture:"assets/img/2_hamburger.png", price: '6.00', description: 'Chicago pizza, also commonly referred to as deep-dish pizza, gets its name from the city it was invented in.'),
  HamburgerModel(title:"New York-Style Hamburger", picture:"assets/img/3_hamburger.png", price: '10.00', description: 'With its characteristic large, foldable slices and crispy outer crust, New York-style pizza is one of America’s most famous regional pizza types.'),
  HamburgerModel(title:"Sicilian Hamburger", picture:"assets/img/4_hamburger.png", price: '12.00', description: 'Sicilian pizza, also known as "sfincione," provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce.'),
  HamburgerModel(title:"Greek Hamburger", picture:"assets/img/5_hamburger.png", price: '20.00', description: 'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza.'),
];