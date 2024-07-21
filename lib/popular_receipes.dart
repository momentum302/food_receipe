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
        primarySwatch: Colors.blue,
      ),
      home: PopularRecipesPage(),
    );
  }
}

class PopularRecipesPage extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'imagePath': '/images/ciopino.jpg',
      'mealName': 'Ciopinno',
      'difficultyLevel': 'Easy',
      'duration': '30 min',
      'rating': 1857,
    },
    {
      'imagePath': '/images/meatloaf.jpg',
      'mealName': 'Meatloaf',
      'difficultyLevel': 'Hard',
      'duration': '80 min',
      'rating': 1327,
    },
    {
      'imagePath': '/images/tater_tots.jpg',
      'mealName': 'Tater Tots',
      'difficultyLevel': 'Medium',
      'duration': '40 min',
      'rating': 1567,
    },
    {
      'imagePath': '/images/cobb_salad.jpg',
      'mealName': 'Cobb Salad',
      'difficultyLevel': 'Easy',
      'duration': '20 min',
      'rating': 1673,
    },
    {
      'imagePath': '/images/pot_roast.jpg',
      'mealName': 'Pot Roast',
      'difficultyLevel': 'Hard',
      'duration': '60 min',
      'rating': 1789,
    },
    {
      'imagePath': '/images/fajita.jpg',
      'mealName': 'Fajita',
      'difficultyLevel': 'Medium',
      'duration': '50 min',
      'rating': 1997,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AppBar(
            title: const Text(
              'Popular Recipes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'Inter',
              ),
            ),
            leadingWidth: 12,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 20,
              onPressed: () {
                Navigator.pop(context); // Navigate back to previous page
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildPopularRecipesList(context),
      ),
    );
  }

  Widget _buildPopularRecipesList(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18.0,
        mainAxisSpacing: 10.0,
        childAspectRatio:
            0.8, // Aspect ratio for avatar squares (width = smaller, height = longer)
      ),
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return RecipeAvatar(recipe: recipe);
      },
    );
  }
}

class RecipeAvatar extends StatefulWidget {
  final Map<String, dynamic> recipe;

  RecipeAvatar({required this.recipe});

  @override
  _RecipeAvatarState createState() => _RecipeAvatarState();
}

class _RecipeAvatarState extends State<RecipeAvatar> {
  bool isFavorited =
      false; // Flag to indicate whether the recipe is favorited or not

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Placeholder image color
                  borderRadius: BorderRadius.circular(
                      16.0), // Border radius for avatar squares
                ),
                width: double.infinity,
                height: 220.0, // Increased image height
                child:
                    Image.asset(widget.recipe['imagePath'], fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 8.0,
              right: 0.0,
              child: GestureDetector(
                onTap: () {
                  // Toggle favorite state
                  setState(() {
                    isFavorited = !isFavorited;
                  });
                },
                child: Container(
                  width: 65,
                  height: 40,
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isFavorited ? Colors.red : Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: isFavorited ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 8.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star_border,
                        color:
                            Colors.black), // White star icon with black outline
                    SizedBox(width: 4.0),
                    Text(
                      '(${widget.recipe['rating']})', // Fixed rating number from the recipe
                      style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        Text(
          widget.recipe['mealName'],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            fontFamily: 'Inter',
          ),
        ),
        SizedBox(height: 4.0),
        Row(
          children: [
            Icon(
              Icons.access_time,
              size: 16.0,
              color: Color(0xFF04c3a6),
            ), // Green clock icon
            SizedBox(width: 4.0),
            Text(
              '${widget.recipe['duration']} + ', // Fixed cooking time from the recipe
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Inter',
              ),
            ),
            Text(
              widget.recipe['difficultyLevel'], // Difficulty level
              style: TextStyle(
                fontSize: 12.0,
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
