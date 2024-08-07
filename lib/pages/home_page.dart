import 'package:get/get.dart';
import 'package:klekt/components/buttom_nav_bar.dart';
import 'package:klekt/controllers/cart_controller.dart';
import 'package:klekt/controllers/navbar_controller.dart';
import 'package:klekt/pages/cartx_page.dart';
import 'package:flutter/material.dart';
import 'package:klekt/pages/shopx_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final NavbarController navController = Get.put(NavbarController());
  final CartController cartController = Get.put(CartController());

  // list of pages
  final List<Widget> _pages = [
    // shop page
    ShopXPage(),

    // cart page
    CartXPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(Icons.menu),
            ),
            )
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
            // logo
              children: [
                DrawerHeader(
                  child: Image.asset('lib/images/logo.png', color: Colors.white,)
                  ),
                
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Divider(color: Colors.grey[800],),
                  ),
                // other pages
                
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text('Home', style: TextStyle(color: Colors.white),),
                  ),
                ),
                
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text('About', style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('Logout', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: Obx(() =>
      _pages[navController.selectedIndex.toInt()],
      )
    );
  }
}