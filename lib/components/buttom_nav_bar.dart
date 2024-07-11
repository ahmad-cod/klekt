import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:klekt/controllers/navbar_controller.dart';

class MyBottomNavBar extends StatelessWidget {
  MyBottomNavBar({super.key,});

  final NavbarController navController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Obx(
        () {
          return GNav(
            selectedIndex: navController.selectedIndex.toInt(),
            color: Colors.grey[400],
            activeColor: Colors.grey.shade700,
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 16,
            gap: 8,
            onTabChange: (value) => navController.updateSelectedIndex(value),
            tabs: const [
              GButton(icon: Icons.home, text: 'Shop',),
              GButton(icon: Icons.shopping_bag_rounded, text: 'Cart',),
            ]
          );
        }
      ),
    );
  }
}