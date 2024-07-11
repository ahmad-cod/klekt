import 'package:get/get.dart';
import 'package:klekt/models/shoe.dart';

class CartController extends GetxController {
  var userCart = <Shoe>[].obs;

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}