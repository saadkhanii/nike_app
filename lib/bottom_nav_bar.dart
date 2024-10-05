import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GNav(
            color: Colors.blueGrey,
            activeColor: Colors.black,
            tabActiveBorder: Border.all(color: Colors.blue.shade500),
            tabBackgroundColor: Colors.blue.shade300,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 50,
            gap: 10,
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
         GButton(icon: Icons.home,
            text: 'Shop',
          ),
          GButton(icon: Icons.shopping_cart,
            text: 'Cart',
          ),
        ]),
      ),
    );
  }
}
