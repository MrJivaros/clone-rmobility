import 'package:flutter/material.dart';
import 'package:rmobility/components/plan.card.dart';
import 'package:rmobility/themes/colors.dart';

class PlanSection extends StatelessWidget {
  const PlanSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Bons plans",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: CustumColors.black,
            ),
          ),
        ),
        Row(
          children: const [
            Flexible(
                child: PlanCard(
              title: "Doing Business",
              content: "Lancement de la plateforme béninoise d’affaires",
              imageUrl: "assets/images/plan1.jpg",
            )),
            Flexible(
                child: PlanCard(
              title: "Huile de coco",
              content: "Huile 100% bio, à partir de 2000f/L ",
              imageUrl: "assets/images/plan2.jpg",
            ))
          ],
        )
      ],
    );
  }
}
