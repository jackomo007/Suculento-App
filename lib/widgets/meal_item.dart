import 'package:flutter/material.dart';

import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.affordability,
    @required this.complexity,
    @required this.duration,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Desafiadora';
        break;
      case Complexity.Hard:
        return 'Difícil';
        break;
      default:
        return 'Desconhecida';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Acessível';
        break;
      case Affordability.Pricey:
        return 'Aceitável';
        break;
      case Affordability.Luxurious:
        return 'Luxuosa';
        break;
      default:
        return 'Desconhecida ';
    }
  }

  void selectMeal(BuildContext context) {
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
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                PhysicalModel(
                                  child: ClipOval(
                                    child: Image.network(
                                      imageUrl,
                                      fit: BoxFit.cover,
                                      width: 330,
                                      height: 210,
                                    ),
                                  ),
                                  color: Colors.white,
                                  shadowColor: Colors.blueGrey,
                                  elevation: 8.0,
                                  shape: BoxShape.circle,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                ),
                                Positioned(
                                  bottom: 20,
                                  right: 10,
                                  child: Container(
                                    color: Colors.black87,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                width: 170,
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                  horizontal: 20,
                                                ),
                                                child: Text(
                                                  title,
                                                  style: TextStyle(
                                                      fontSize: 26,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                  softWrap: true,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '120 Calorias',
                                            style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.orangeAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.orangeAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.orangeAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.orangeAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    size: 20,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    '$duration min',
                                                    style: TextStyle(
                                                      fontSize: 12,
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
                                                    Icons
                                                        .monetization_on_outlined,
                                                    size: 20,
                                                    color: Colors.grey,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    affordabilityText,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.whatshot_outlined,
                                                size: 20,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                complexityText,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();
    p.lineTo(size.width / 2, 0.0);
    p.lineTo(0.0, size.width * 60);
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
