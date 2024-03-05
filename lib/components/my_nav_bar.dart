// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      tabMargin: const EdgeInsets.all(20),
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      color: Colors.grey[400],
      activeColor: Colors.brown,
      tabBackgroundColor: Colors.grey.shade300,
      tabBorderRadius: 24,
      tabActiveBorder: Border.all(color: Colors.white),
      gap: 5,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',
          iconColor: Colors.brown.shade300,
        ),
      ],
    );
  }
}
