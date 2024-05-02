import 'package:flutter/material.dart';
import './shoe.dart';

class Cart extends ChangeNotifier {
  // the list of shoes
  List<Shoe> shoeShop = const [
    Shoe(name: 'Air Jordan', description: 'Everyone flies, but some fly longer', imagePath: 'lib/images/air_jordan.png', price: 250),

    Shoe(name: 'Zoom Freak', description: 'Zoom out, Zoom Freak!', imagePath: 'lib/images/air_jordan.png', price: 250),

    Shoe(name: 'Nike', description: 'Everyone flies, but some fly longer', imagePath: 'lib/images/air_jordan.png', price: 250),

    Shoe(name: 'Air Jordan', description: 'Everyone flies, but some fly longer', imagePath: 'lib/images/air_jordan.png', price: 250),
  ];
  // list of items in cart // this is just planning implementing things are created twice
  List<Shoe> userCart = [];
  // method to get the list of shoes
  List<Shoe> getShoeList () {
    return shoeShop;
  }
  // method to get the list of items in the cart
  List<Shoe> getUserCart () {
    return userCart;
  }
  // method to add a shoe to the cart
  void addItemToCart (Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  // method to remove a shoe from the cart
  void removeItemFromCart (Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}