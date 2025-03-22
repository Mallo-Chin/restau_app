import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String name;
  final String details;
  final String image;

  const FoodDetailsScreen({super.key, required this.name, required this.details, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 200),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              details,
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back to Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
