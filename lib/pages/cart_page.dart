import 'package:klekt/components/cart_item.dart';
import 'package:klekt/models/cart.dart';
import 'package:klekt/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        final cartItems = cart.getUserCart();
        return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // heading
            const Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
        
            // space
            const SizedBox(height: 20,),
        
            // cart items
            cartItems.isEmpty ? const Center(
              child: Text(
                'No items in the cart!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ) :
            Expanded(
              child: ListView.builder(
                itemCount: cart.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = cart.getUserCart()[index];
                  return CartItem(shoe: individualShoe);
                }
              )
            ),
          ],
        ),
      );
      }
    );
  }
}