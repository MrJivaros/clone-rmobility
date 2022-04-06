import 'package:flutter/material.dart';
import 'package:rmobility/components/CardView.dart';
import 'package:rmobility/components/action.button.dart';
import 'package:rmobility/components/alert.dart';
import 'package:rmobility/components/plan.section.dart';
import 'package:rmobility/themes/colors.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: CustumColors.primary,
          size: 35,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Bonjour Raynald",
          style: TextStyle(
            color: CustumColors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Alert(),
            ),
            const Flexible(child: CardView()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ActionButtons(text: "Louer auto ici"),
                  ActionButtons(text: "Qualité de l’air"),
                ],
              ),
            ),

            // SizedBox(height: 25),
            const Flexible(child: PlanSection())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {},
        backgroundColor: CustumColors.primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 70,
          padding: const EdgeInsets.all(0),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.home,
                            color: CustumColors.primary,
                          ),
                          Text(
                            "Acceuil",
                            style: TextStyle(
                              color: CustumColors.primary,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.drive_eta,
                            color: CustumColors.grey,
                          ),
                          Text(
                            "Publier",
                            style: TextStyle(
                              color: CustumColors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.question_answer,
                            color: CustumColors.grey,
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: CustumColors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.question_answer,
                            color: CustumColors.grey,
                          ),
                          Text(
                            "Profil",
                            style: TextStyle(
                              color: CustumColors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
