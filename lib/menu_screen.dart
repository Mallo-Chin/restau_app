import 'package:flutter/material.dart';
import 'package:restau_app/food_details.dart';

class MenuScreen extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {
      'name': 'Kimchi Stew',
      'details':
          'Kimchi stew is a spicy Korean stew featuring fermented kimchi and various meats and vegetables. Its flavor profile is deeply savory and tangy, with a customizable level of spice.',
      'image': 'assets/images/kimchiStew.jpg',
    },
    {
      'name': 'Dumplings',
      'details':
          'Dumplings are a global culinary staple, encompassing diverse fillings and cooking methods. From steamed to fried, these bite-sized treats offer a versatile and satisfying snack or meal.',
      'image': 'assets/images/dumplings.jpg',
    },
    {
      'name': 'Mul Naengmyeon',
      'details':
          'Mul naengmyeon is a refreshing Korean cold noodle soup, ideal for hot weather. Its icy broth, chewy noodles, and assorted toppings create a delightful balance of flavors and textures.',
      'image': 'assets/images/mulnaengmyeon.jpeg',
    },
    {
      'name': 'Bibimbap',
      'details':
          'Bibimbap is a vibrant Korean mixed rice dish with colorful vegetables, meat, and a fried egg. The combination of textures and tastes makes it a visually appealing and flavorful meal.',
      'image': 'assets/images/bibimbap.jpeg',
    },
  ];

  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(menuItems[index]['image']!, width: 50),
            title: Text(menuItems[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => FoodDetailsScreen(
                        name: menuItems[index]['name']!,
                        details: menuItems[index]['details']!,
                        image: menuItems[index]['image']!,
                      ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
