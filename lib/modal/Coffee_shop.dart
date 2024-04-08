import 'package:coffee_shop/modal/coffee.dart';
import 'package:flutter/material.dart';

class Coffee_shop extends ChangeNotifier {
  //list of coffee's
  final List<Coffee> _coffeeList = [
    Coffee(
        coffeeName: "Black Coffee",
        coffeePrice: "110",
        coffeeImagePath: "lib/images/black-tea.png"),
    Coffee(
        coffeeName: "Hot Coffee",
        coffeePrice: "180",
        coffeeImagePath: "lib/images/coffee.png"),
    Coffee(
        coffeeName: "Capacheno ",
        coffeePrice: "260",
        coffeeImagePath: "lib/images/hot-coffee.png"),
    Coffee(
        coffeeName: "special Coffee",
        coffeePrice: "300",
        coffeeImagePath: "lib/images/ice-coffee.png"),
    Coffee(
        coffeeName: "Tea ",
        coffeePrice: "70",
        coffeeImagePath: "lib/images/tea-cup.png"),
  ];

  //list of cartitem's
  List<Coffee> _cartList = [];

  //get  coffee's list
  List<Coffee> get coffeeList => _coffeeList;

  //get cartitem's list
  List<Coffee> get cartList => _cartList;

  //method to add items to cart
  void addItemToCart(Coffee coffee) {
    cartList.add(coffee);
    notifyListeners();
  }

  //method to remove items from the cart
  void removeitemfromCart(Coffee coffee) {
    cartList.remove(coffee);
    notifyListeners();
  }
}
