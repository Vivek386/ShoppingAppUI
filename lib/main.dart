import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'product_screen.dart';
import 'last_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ProductScreen.id: (context) => ProductScreen(),
        LastScreen.id: (context) => LastScreen()
      },

    );
  }
}






