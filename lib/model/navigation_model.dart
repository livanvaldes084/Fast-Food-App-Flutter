import 'package:flutter/material.dart';
class NavigationModel{
  String title;
  IconData icon;
  String cmp;
  NavigationModel({this.title, this.icon, this.cmp});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title:"Pizzas", icon: Icons.local_pizza, cmp: "pizzas"),
  NavigationModel(title:"Hamburger", icon: Icons.fastfood, cmp: "food"),
  NavigationModel(title:"Breakfast", icon: Icons.free_breakfast, cmp: "breackfast"),
  NavigationModel(title:"Bar", icon: Icons.local_bar, cmp: ""),
  NavigationModel(title:"Cake", icon: Icons.cake, cmp: "")
];