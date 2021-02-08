import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  final Function toggleFavorite;
  final Function isFavorite;

  MealDetailScreen(this.toggleFavorite, this.isFavorite);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  Row getRate(rate, size) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: size,
          color: rate >= 1 ? Colors.orangeAccent : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: size,
          color: rate >= 2 ? Colors.orangeAccent : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: size,
          color: rate >= 3 ? Colors.orangeAccent : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: size,
          color: rate >= 4 ? Colors.orangeAccent : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: size,
          color: rate == 5 ? Colors.orangeAccent : Colors.grey,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            barrierColor: Colors.black.withOpacity(0.01),
            builder: (context) => SingleChildScrollView(
              child: Container(
                height: 240,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Directions',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: selectedMeal.steps.length,
                        itemBuilder: (ctx, index) => Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Text(
                                  '*  ',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: 350,
                                child: Text(
                                  selectedMeal.steps[index],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.info_outline,
          size: 50,
          color: Colors.deepOrange,
        ),
      ),
      body: ListView(children: [
        Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 200, top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: isFavorite(selectedMeal.id)
                                ? Colors.red
                                : Colors.grey,
                            padding: EdgeInsets.only(top: 15, left: 15),
                            alignment: Alignment.topLeft,
                            onPressed: () => toggleFavorite(selectedMeal.id),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        selectedMeal.halfImageUrl,
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            selectedMeal.type,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              selectedMeal.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            '${selectedMeal.calories} Calorias',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      getRate(selectedMeal.rate, 24.0),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${selectedMeal.duration} min',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 90.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (ctx, index) => Container(
                  child: Card(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            selectedMeal.ingredients[index][1],
                            // selectedMeal.imageUrl,
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            selectedMeal.ingredients[index][0],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
