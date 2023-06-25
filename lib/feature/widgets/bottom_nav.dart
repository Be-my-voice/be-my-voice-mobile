import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNav({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Color(0xFF000000), // Set selected item color
      unselectedItemColor: Color(0xFFFFFFFF),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: ' ',
          backgroundColor: Color(0xFF147B72),

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined),
          label: ' ',
          backgroundColor: Color(0xFF147B72),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: ' ',
          backgroundColor: Color(0xFF147B72),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined),
          label: ' ',
          backgroundColor: Color(0xFF147B72),
        ),
      ],
    );
  }
}