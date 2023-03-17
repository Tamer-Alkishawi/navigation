import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

int _currentIndex = 0;

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Bottom Navigation Bar',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (int currentIndex) {

        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        selectedFontSize: 18,
        selectedLabelStyle: GoogleFonts.pacifico(fontWeight: FontWeight.bold),
        iconSize: 28,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 16,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
            activeIcon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
            activeIcon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
