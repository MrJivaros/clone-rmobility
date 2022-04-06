import 'package:flutter/material.dart';
import 'package:rmobility/screens/aire.info.dart';
import 'package:rmobility/themes/colors.dart';

class ExpositionScreen extends StatelessWidget {
  static const routeName = '/exposition';

  const ExpositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: CustumColors.primary,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.thumb_up_alt_outlined),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              child: Text(
                'Suivez votre exposition à la pollution',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/expositionImage.png'),
            ),
            Flexible(
                child: Column(
              children: [
                Container(
                  height: 48,
                  width: 300,
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AirInfoScreen.routeName);
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: CustumColors.primary),
                    ),
                    child: const Text(
                      "Qualité d’air là où je suis",
                      style: TextStyle(
                        color: CustumColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 48,
                  width: 300,
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: CustumColors.primary),
                    ),
                    child: const Text(
                      "Voir toutes les mesures",
                      style: TextStyle(
                        color: CustumColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 48,
                  width: 300,
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: CustumColors.primary),
                    ),
                    child: const Text(
                      "Prêter un capteur",
                      style: TextStyle(
                        color: CustumColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 48,
                  width: 300,
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: CustumColors.primary),
                    ),
                    child: const Text(
                      "FAQ Airbeam",
                      style: TextStyle(
                        color: CustumColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
