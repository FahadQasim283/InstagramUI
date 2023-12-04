import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/homescreen.dart';
import 'package:instagram_ui/utils/routegenerator.dart';
import 'package:instagram_ui/utils/routenames.dart';

void main(List<String> args) {
  runApp(const MyInsta());
}

class MyInsta extends StatelessWidget {
  const MyInsta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialRoute: RouteNames.homePgaeRoute,
      onGenerateRoute: GenerateRoutes.generateRoute,
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color.fromRGBO(45, 45, 45, 1)),
        appBarTheme: const AppBarTheme(
          actionsIconTheme: IconThemeData(color: Color.fromRGBO(45, 45, 45, 1)),
          elevation: 1,
          backgroundColor: Colors.white,
          foregroundColor: Color.fromRGBO(45, 45, 45, 1),
        ),
      ),
    );
  }
}
