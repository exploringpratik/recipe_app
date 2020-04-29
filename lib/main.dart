import 'package:flutter/material.dart';
import 'package:recipeapp/screens/my_recipe_screen.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        MyRecipeScreen.id: (context) => MyRecipeScreen(),

      },
    );
  }
}

