import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/shop.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/menu_page.dart';
import 'package:flutter_application_1/pages/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/splashscreen': (BuildContext context) => const SplashScreen(),
        '/menupage': (BuildContext context) => const MenuPage(),
        '/cartpage': (BuildContext context) => const CartPage(),
      },
    );
  }
}
