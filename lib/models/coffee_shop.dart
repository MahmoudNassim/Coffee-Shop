import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // Coffee for shop
  final List<Coffee> _shop = [
    Coffee(name: 'Long Black ', price: '20', imagePath: 'images/coffee.png'),
    Coffee(name: 'Espresso', price: '25', imagePath: 'images/espresso.png'),
    Coffee(
        name: 'Iced Coffee', price: '25', imagePath: 'images/iced-coffee.png'),
    Coffee(
        name: 'Latte Macchiato',
        price: '30',
        imagePath: 'images/latte-macchiato.png'),
  ];
  // get coffee list
  List<Coffee> get cofffeeShop => _shop;
  // user cart
  final List<Coffee> _userCart = [];
  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item ti cart
  void addItem(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItem(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
