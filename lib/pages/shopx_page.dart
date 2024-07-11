import 'package:get/get.dart';
import 'package:klekt/components/shoe_tile.dart';
import 'package:klekt/constants.dart';
import 'package:klekt/controllers/cart_controller.dart';
import 'package:klekt/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopXPage extends StatelessWidget {
  ShopXPage({super.key});

  final CartController cartController = Get.find();

  void addShoeToCart(Shoe shoe) {
    cartController.addToCart(shoe);

    // alert the user, shoe successfully added
    Get.dialog(const AlertDialog(
      title: Text('Successfully added!'),
      content: Text('Check your Cart.'),
    ));
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: Colors.grey[200],
          body: Column(
            children: [
              // Search
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              // message
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Everyone flies ..., some fly longer than others.',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),

              // hot picks
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Picks 🔥',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              Expanded(
                  child: ListView.builder(
                      itemCount: shoes.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Shoe shoe = shoes[index];
                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        );
                      })),

              const Padding(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Divider(
                  color: Colors.white,
                ),
              )
            ],
          ));
    }
}