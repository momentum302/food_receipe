import 'package:flutter/material.dart';

void main() {
  runApp(MealDetail());
}

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<String> ingredients = [
    '2 cups egusi (not ground)',
    '3/4 cup palm oil',
    '1/4 cup crayfish',
    '1 shrimp seasoning cube, known as Maggi, Crayfish, or Maggi Crevette',
  ];

  final List<String> steps = [
    'Heat palm oil in a pot over medium heat.',
    'Add egusi and stir continuously until it begins to fry.',
    'Add water gradually, stirring to prevent lumps.',
    'Add crayfish, seasoning cube, and salt. Stir well.',
    'Simmer for 30 minutes until the soup thickens.',
  ];

  bool showIngredients = false;
  bool showSteps = false;

  void toggleIngredients() {
    setState(() {
      showIngredients = !showIngredients;
      showSteps = false; // Ensure only one section is open at a time
    });
  }

  void toggleSteps() {
    setState(() {
      showSteps = !showSteps;
      showIngredients = false; // Ensure only one section is open at a time
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 270,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      '/images/egusi-soup.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent,
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 15,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 60,
                  child: CircleAvatar(
                    radius: 13,
                    child: Icon(
                      Icons.share,
                      size: 20,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 25,
                  child: CircleAvatar(
                    radius: 13,
                    child: Icon(
                      Icons.favorite,
                      size: 20,
                      color: Color.fromRGBO(226, 3, 3, 1),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Container(
                    width: 105,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              '/images/momentum.jpg',
                            ),
                            radius: 11,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Chef Oge',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Egusi Soup',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color.fromRGBO(4, 195, 166, 1),
                          ),
                          Text(
                            '4.6 (2,743)',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Egusi soup is a popular West African dish, often enjoyed in Nigeria and other countries. '
                    'It features a thick, hearty broth made with ground melon seeds (egusi), vegetables, and '
                    'sometimes meat or fish. The soup is rich, flavorful, and has a unique texture due to the '
                    'egusi seeds. It is typically served with staples like pounded yam, fufu, or rice.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(18, 18)),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(3, 156, 133, 1),
                                child: Icon(
                                  Icons.schedule,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cooking Time',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  Text(
                                    '40 mins',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(18, 18)),
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(3, 156, 133, 1),
                                  child: Icon(
                                    Icons.breakfast_dining,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cuisine',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                    Text(
                                      'Nigerian',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: toggleIngredients,
                          child: Container(
                            width: 200,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(3, 156, 133, 9),
                            ),
                            child: Center(
                              child: Text(
                                'Ingredients',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: toggleSteps,
                          child: Container(
                            width: 200,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFFe6f9f6)),
                            child: Center(
                              child: Text(
                                'Steps',
                                style: TextStyle(
                                  color: Color.fromRGBO(3, 156, 133, 9),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  if (showIngredients)
                    Container(
                      height: 120,
                      child: ListView.builder(
                        itemCount: ingredients.length,
                        itemBuilder: (context, index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  size: 10,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  ingredients[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'Inter',
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  if (showSteps)
                    Container(
                      height: 120,
                      child: ListView.builder(
                        itemCount: steps.length,
                        itemBuilder: (context, index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.fiber_manual_record,
                                  size: 10,
                                ),
                              ),
                              Expanded(
                                child: Text(steps[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Inter',
                                    )),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
