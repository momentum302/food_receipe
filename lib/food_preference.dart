import 'package:flutter/material.dart';

void main() {
  runApp(PreferenceMeal());
}

class PreferenceMeal extends StatelessWidget {
  const PreferenceMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const FoodPreferencesPage(),
    );
  }
}

class FoodPreferencesPage extends StatelessWidget {
  const FoodPreferencesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Set your food preferences',
                    style: TextStyle(
                      fontSize: 14.0, // Decrease font size
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 0.5), // Reduce spacing
                  Text(
                    'Which cuisine do you prefer?',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                children: List.generate(
                  9,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        _navigateToFoodPage(context, index);
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            //radius: 55.0,
                            radius: MediaQuery.of(context).size.width * 0.14,
                            backgroundImage: AssetImage(_getImagePath(index)),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            _getFoodName(index),
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40, // Adjust width
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0), // Adjust the padding
                        backgroundColor: Color(0xFF04c3a6),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18.0, // Decrease font size
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToFoodPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AfricaPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MexicanPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChinesePage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PuertoRicanPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KoreanPage()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EnglishPage()),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrenchPage()),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SpanishPage()),
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RussianPage()),
        );
        break;
      default:
        break;
    }
  }

  String _getFoodName(int index) {
    switch (index) {
      case 0:
        return 'African';
      case 1:
        return 'Mexican';
      case 2:
        return 'Chinese';
      case 3:
        return 'Puerto Rican';
      case 4:
        return 'Korean';
      case 5:
        return 'English';
      case 6:
        return 'French';
      case 7:
        return 'Spanish';
      case 8:
        return 'Russian';
      default:
        return '';
    }
  }

  String _getImagePath(int index) {
    switch (index) {
      case 0:
        return '/images/africa.jpeg';
      case 1:
        return '/images/mexican.jpg';
      case 2:
        return '/images/chinese.jpg';
      case 3:
        return '/images/puertorican.jpg';
      case 4:
        return '/images/korean.jpg';
      case 5:
        return '/images/english.jpg';
      case 6:
        return '/images/french.jpg';
      case 7:
        return '/images/spanish.jpg';
      case 8:
        return '/images/russian.jpg';
      default:
        return '';
    }
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: const Center(
        child: Text('This is the next page'),
      ),
    );
  }
}

class AfricaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('African Page'),
      ),
      body: const Center(
        child: Text('Africa Cuisine Page'),
      ),
    );
  }
}

class MexicanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mexican Page'),
      ),
      body: const Center(
        child: Text('Mexican Cuisine Page'),
      ),
    );
  }
}

class ChinesePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chinese Page'),
      ),
      body: const Center(
        child: Text('Chinese Cuisine Page'),
      ),
    );
  }
}

class PuertoRicanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puerto Rican Page'),
      ),
      body: const Center(
        child: Text('Puerto Rican Cuisine Page'),
      ),
    );
  }
}

class KoreanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Korean Page'),
      ),
      body: const Center(
        child: Text('Korean Cuisine Page'),
      ),
    );
  }
}

class EnglishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Page'),
      ),
      body: const Center(
        child: Text('English Cuisine Page'),
      ),
    );
  }
}

class FrenchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('French Page'),
      ),
      body: const Center(
        child: Text('French Cuisine Page'),
      ),
    );
  }
}

class SpanishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spanish Page'),
      ),
      body: const Center(
        child: Text('Spanish Cuisine Page'),
      ),
    );
  }
}

class RussianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Russian Page'),
      ),
      body: const Center(
        child: Text('Russian Cuisine Page'),
      ),
    );
  }
}
