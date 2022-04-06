import 'package:flutter/material.dart';

class AirInfoScreen extends StatelessWidget {
  static const routeName = '/airInfo';
  const AirInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Respirez de l’air propre et plus sain'),
      ),
      body: Container(),
    );
  }
}
