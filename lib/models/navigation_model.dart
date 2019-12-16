import 'package:flutter/material.dart';
class NavigationModel{
  String title;
  IconData icon;
  String cmp;
  NavigationModel({this.title, this.icon, this.cmp});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title:"Pizzas", icon: Icons.local_pizza, cmp: "pizzas"),
  NavigationModel(title:"Hamburger", icon: Icons.fastfood, cmp: "hamburgers"),
  NavigationModel(title:"Settings", icon: Icons.settings, cmp: "settings"),
];