import 'package:flutter/material.dart';
import 'package:rmobility/themes/colors.dart';

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: CustumColors.dangerWithOpacity,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.info,
            color: CustumColors.danger,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: const [
                  Text(
                    'Veuillez ',
                    style: TextStyle(
                        fontSize: 10,
                        color: CustumColors.danger,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'ajouter votre numéro de téléphone (Flooz/Momo)',
                    style: TextStyle(
                      fontSize: 10,
                      color: CustumColors.danger,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
