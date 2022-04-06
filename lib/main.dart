import 'package:flutter/material.dart';
import 'package:rmobility/screens/aire.info.dart';
import 'package:rmobility/screens/exposition.dart';
import 'package:rmobility/screens/home.dart';
import 'package:rmobility/screens/map.dart';
import 'package:rmobility/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ExpositionScreen.routeName: (context) => const ExpositionScreen(),
        AirInfoScreen.routeName: (context) => const AirInfoScreen(),
        MapEndStatisticScreen.routeName: (context) =>
            const MapEndStatisticScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
