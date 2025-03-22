import 'package:flutter/material.dart';
import 'menu_screen.dart';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MenuScreen(),
    );
  }
}
