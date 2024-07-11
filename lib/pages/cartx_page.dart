import 'package:get/get.dart';
import 'package:klekt/components/cart_item.dart';
import 'package:klekt/controllers/cart_controller.dart';
import 'package:klekt/controllers/navbar_controller.dart';
import 'package:klekt/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:klekt/pages/home_page.dart';

class CartXPage extends StatelessWidget {
  CartXPage({super.key});

  final CartController controller = Get.find();
  final NavbarController navController = Get.find();

  @override
  Widget build(BuildContext context) {
        final cartItems = controller.userCart;
        return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Obx(() {
            return Column(
              children: [
                // heading
                Text(
                  'My Cart (${cartItems.length})',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
            
                // space
                const SizedBox(height: 20,),
            
                // cart items
                cartItems.isEmpty ? Center(
                  child: ElevatedButton(
                    onPressed: () => {
                      navController.updateSelectedIndex(0),
                      Get.to(() => HomePage())
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Add item to cart',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ) :
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.userCart.length,
                    itemBuilder: (context, index) {
                      Shoe individualShoe = controller.userCart[index];
                      return CartItem(shoe: individualShoe);
                    }
                  )
                ),
              ],
            );
          }
        ),
      );
      }
  }