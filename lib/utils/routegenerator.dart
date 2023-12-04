import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/routenames.dart';

import '../screens/homescreen.dart';
import '../screens/searchscreen.dart';

class GenerateRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //home page
      case RouteNames.homePgaeRoute:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      // search page
      case RouteNames.searchPageRoute:
        return MaterialPageRoute(
          builder: (context) => const SearchScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          ),
        );
    }
  }
}
