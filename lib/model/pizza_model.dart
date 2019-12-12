import 'package:flutter/material.dart';

class PizzaModel{
  String title;
  String picture;
  double price;
  PizzaModel({this.title, this.picture, this.price});
}

List<PizzaModel> pizzaItems = [
  PizzaModel(title:"Pizzas 1", picture:"assets/img/pizza.png", price: 5.00),
  PizzaModel(title:"Pizzas 2", picture:"assets/img/pizza.png", price: 6.00),
  PizzaModel(title:"Pizzas 3", picture:"assets/img/pizza.png", price: 10.00),
  PizzaModel(title:"Pizzas 4", picture:"assets/img/pizza.png", price: 12.00),
  PizzaModel(title:"Pizzas 5", picture:"assets/img/pizza.png", price: 20.00),
];