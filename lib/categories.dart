import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: ThemeData(
        hintColor: Colors.red,
        primarySwatch: Colors.blue,
      ),
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            leadingWidth: 10,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              'Categories',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          // mainAxisSpacing: 15,
          // crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: List.generate(
            9,
            (index) => InkWell(
              onTap: () {
                // Navigate to respective pages
                _navigateToCategoryPage(context, index);
              },
              child: Column(
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.15,
                    backgroundImage: AssetImage(
                      _getImagePath(index),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    _getCategoryName(index),
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToCategoryPage(BuildContext context, int index) {
    // Navigation logic goes here
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BreakfastPage(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LunchPage(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DinnerPage(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SnacksPage(),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DessertPage(),
          ),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SaladPage(),
          ),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(),
          ),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DrinksPage(),
          ),
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BrunchPage(),
          ),
        );
        break;
      default:
        break;
    }
  }

  String _getImagePath(int index) {
    // Image paths for each category
    List<String> imagePaths = [
      '/images/breakfast_image.jpg',
      '/images/lunch_image.png',
      '/images/dinner_image.jpg',
      '/images/snacks.jpg',
      '/images/desserts_image.jpg',
      '/images/salad_image.jpg',
      '/images/main_image.jpg',
      '/images/drink_image.jpg',
      '/images/brunch_image.jpg',
    ];
    return imagePaths[index];
  }

  String _getCategoryName(int index) {
    // Category names
    List<String> categoryNames = [
      'Breakfast',
      'Lunch',
      'Dinner',
      'Snacks',
      'Dessert',
      'Salad',
      'Main',
      'Drinks',
      'Brunch',
    ];
    return categoryNames[index];
  }
}

class BreakfastPage extends StatelessWidget {
  const BreakfastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast Page'),
      ),
      body: Center(
        child: Text('This is the Breakfast Page'),
      ),
    );
  }
}

class LunchPage extends StatelessWidget {
  const LunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lunch Page'),
      ),
      body: Center(
        child: Text('This is the Lunch Page'),
      ),
    );
  }
}

class DinnerPage extends StatelessWidget {
  const DinnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dinner Page'),
      ),
      body: Center(
        child: Text('This is the Dinner Page'),
      ),
    );
  }
}

class SnacksPage extends StatelessWidget {
  const SnacksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacks Page'),
      ),
      body: Center(
        child: Text('This is the Snacks Page'),
      ),
    );
  }
}

class DessertPage extends StatelessWidget {
  const DessertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Page'),
      ),
      body: Center(
        child: Text('This is the Dessert Page'),
      ),
    );
  }
}

class SaladPage extends StatelessWidget {
  const SaladPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salad Page'),
      ),
      body: Center(
        child: Text('This is the Salad Page'),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Text('This is the Main Page'),
      ),
    );
  }
}

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drinks Page'),
      ),
      body: Center(
        child: Text('This is the Drinks Page'),
      ),
    );
  }
}

class BrunchPage extends StatelessWidget {
  const BrunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brunch Page'),
      ),
      body: Center(
        child: Text('This is the Brunch Page'),
      ),
    );
  }
}
