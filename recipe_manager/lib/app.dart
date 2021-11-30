import 'package:flutter/material.dart';
import 'package:recipe_manager/ui/screens/home.dart';
import 'package:recipe_manager/ui/screens/login.dart';

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes Manager',
      initialRoute: '/login',
      routes: {
        '/Home': (context) => HomeScreen(),
        '/login': (context) => Login(),
      },
    );
  }
}
