import 'package:flutter/material.dart';

class BreackFastModel{
  String title;
  String picture;
  String price;
  String description;
  BreackFastModel({this.title, this.picture, this.price, this.description});
}

List<BreackFastModel> breackfastItems = [
  BreackFastModel(title:"Neapolitan BreackFast", picture:"assets/img/1.png", price: '5.00', description: 'Neapolitan is the original pizza. This delicious pie dates all the way back to 18th century in Naples, Italy. '),
  BreackFastModel(title:"Chicago BreackFast", picture:"assets/img/2.png", price: '6.00', description: 'Chicago pizza, also commonly referred to as deep-dish pizza, gets its name from the city it was invented in.'),
  BreackFastModel(title:"New York-Style BreackFast", picture:"assets/img/3.png", price: '10.00', description: 'With its characteristic large, foldable slices and crispy outer crust, New York-style pizza is one of America’s most famous regional pizza types.'),
  BreackFastModel(title:"Sicilian BreackFast", picture:"assets/img/4.png", price: '12.00', description: 'Sicilian pizza, also known as "sfincione," provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce.'),
  BreackFastModel(title:"Greek BreackFast", picture:"assets/img/5.png", price: '20.00', description: 'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza.'),
];