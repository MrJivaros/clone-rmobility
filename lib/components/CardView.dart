import 'package:flutter/material.dart';
import 'package:rmobility/components/Card.dart';
import 'package:rmobility/model/card.model.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: (1 / .6),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: cardItems
          .map(
            (item) => MyCard(
              title: item.title,
              image: item.imageUrl,
              content: item.content,
            ),
          )
          .toList(),
    );
  }
}

final List<CardModel> cardItems = [
  CardModel(
    title: "Trajets publiés",
    content: "314",
    imageUrl: "assets/images/map.jpg",
  ),
  CardModel(
    title: "Trajets effectués",
    content: "314",
    imageUrl: "assets/images/a.png",
  ),
  CardModel(
    title: "Réservations",
    content: "403",
    imageUrl: "assets/images/c.png",
  ),
  CardModel(
    title: "CO2 évités",
    content: "308,5 Kg",
    imageUrl: "assets/images/co2.png",
  ),
];
