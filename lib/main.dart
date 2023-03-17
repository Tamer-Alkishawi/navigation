import 'package:flutter/material.dart';
import 'package:navigation/screens/bottom_navigation_screen.dart';
import 'package:navigation/screens/categories_screen.dart';
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/launch_screen.dart';
import 'package:navigation/screens/login_screen.dart';
import 'package:navigation/screens/out_boarding_screen.dart';
import 'package:navigation/screens/products_screen.dart';
import 'package:navigation/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/categories_screen': (context) => const CategoriesScreen(),
        '/products_screen': (context) => const ProductsScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/bottom_navigation_screen': (context) => const BottomNavigationScreen(),
      },
    );
  }
}
