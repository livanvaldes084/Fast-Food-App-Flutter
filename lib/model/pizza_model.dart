import 'package:flutter/material.dart';

class PizzaModel{
  String title;
  String picture;
  String price;
  String description;
  PizzaModel({this.title, this.picture, this.price, this.description});
}

List<PizzaModel> pizzaItems = [
  PizzaModel(title:"Pizzas 1", picture:"assets/img/pizza.png", price: '5.00', description: 'Pain boulanger, 1 steak haché 130gr frais origine France, oignons'),
  PizzaModel(title:"Pizzas 2", picture:"assets/img/pizza.png", price: '6.00', description: 'Pain boulanger, 1 steak haché 130gr frais origine France, oignons'),
  PizzaModel(title:"Pizzas 3", picture:"assets/img/pizza.png", price: '10.00', description: 'Pain boulanger, 1 steak haché 130gr frais origine France, oignons'),
  PizzaModel(title:"Pizzas 4", picture:"assets/img/pizza.png", price: '12.00', description: 'Pain boulanger, 1 steak haché 130gr frais origine France, oignons'),
  PizzaModel(title:"Pizzas 5", picture:"assets/img/pizza.png", price: '20.00', description: 'Pain boulanger, 1 steak haché 130gr frais origine France, oignons'),
];