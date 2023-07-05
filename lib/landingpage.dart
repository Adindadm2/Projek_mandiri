import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projek_novel/Favorite.dart';
import 'package:projek_novel/Penulis.dart';
import 'package:projek_novel/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    HomePage(),
    BerlanggananPage(),
    PenulisCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _bottomNavCurrentIndex,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      backgroundColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.wallet_outlined,
              color: Colors.black54,
            ),
            icon: Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),
            label: "Berlangganan"),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.bookmark_add_rounded,
              color: Colors.black54,
            ),
            icon: Icon(
              Icons.bookmark_add_rounded,
              color: Colors.white,
            ),
            label: "Penulis"),
      ],
    );
  }
}
