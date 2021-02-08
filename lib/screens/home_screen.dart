import 'package:flutter/material.dart';
import 'package:suculento_app/models/meal.dart';
import '../screens/meal_detail_screen.dart';
import '../dummy_data.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Meal> _favoriteMeals = [];

  void _toggleFavorite(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  String getComplexityText(complexity) {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknow';
    }
  }

  String getAffordabilityText(affordability) {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'Unknow ';
    }
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

  void selectMeal(BuildContext context, id) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final listMeal = DUMMY_MEALS;
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Text(
                  'Bonjour',
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Fiorella',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'What would you like to cook today?',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Search for recipes',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Color(0XFFFF7F8FC),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.white38, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0XFFFF7F8FC)),
                  child: Icon(Icons.tune),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Today\'s Fresh Recipes',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            height: 280.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMeal.length,
              itemBuilder: (ctx, index) => InkWell(
                onTap: () => selectMeal(ctx, listMeal[index].id),
                // TODO: REFACTOR TO WIDGET VERTICAL CARD
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Stack(
                    children: [
                      Container(
                        width: 200.0,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(right: 30),
                        child: Container(
                          width: 180.0,
                          decoration: new BoxDecoration(
                            color: Color(0XFFFF7F8FC),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              Row(
                                children: [
                                  Text(
                                    listMeal[index].type,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
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
                                      listMeal[index].title,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              getRate(listMeal[index].rate, 24.0),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${listMeal[index].calories} Calorias',
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        '${listMeal[index].duration} min',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        getAffordabilityText(
                                            listMeal[index].affordability),
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: _isMealFavorite(listMeal[index].id)
                                ? Colors.red
                                : Colors.grey,
                            padding: EdgeInsets.only(top: 15, left: 15),
                            alignment: Alignment.topLeft,
                            onPressed: () =>
                                _toggleFavorite(listMeal[index].id),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 80,
                            ),
                            PhysicalModel(
                              child: ClipOval(
                                child: Image.network(
                                  listMeal[index].imageUrl,
                                  fit: BoxFit.cover,
                                  width: 110,
                                  height: 90,
                                ),
                              ),
                              color: Colors.white,
                              shadowColor: Colors.blueGrey,
                              elevation: 8.0,
                              shape: BoxShape.circle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20, top: 5, bottom: 3),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            height: 300.0,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listMeal.length,
              itemBuilder: (ctx, index) => InkWell(
                onTap: () => selectMeal(ctx, listMeal[index].id),
                // TODO: REFACTOR TO WIDGET HORIZONTAL CARD
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: new BoxDecoration(
                          color: Color(0XFFFF7F8FC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                PhysicalModel(
                                  child: ClipOval(
                                    child: Image.network(
                                      listMeal[index].imageUrl,
                                      fit: BoxFit.cover,
                                      width: 90,
                                      height: 70,
                                    ),
                                  ),
                                  color: Colors.white,
                                  shadowColor: Colors.blueGrey,
                                  elevation: 8.0,
                                  shape: BoxShape.circle,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      listMeal[index].type,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 180,
                                      child: Text(
                                        listMeal[index].title,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: false,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    getRate(listMeal[index].rate, 20.0),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '${listMeal[index].calories} Calorias',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 18,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '${listMeal[index].duration} min',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          size: 18,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          getAffordabilityText(
                                              listMeal[index].affordability),
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.favorite),
                                  color: _isMealFavorite(listMeal[index].id)
                                      ? Colors.red
                                      : Colors.grey,
                                  alignment: Alignment.topLeft,
                                  onPressed: () =>
                                      _toggleFavorite(listMeal[index].id),
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}
