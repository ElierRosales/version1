import 'package:flutter/material.dart';

import 'screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute:  'home',
      routes: {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen(),
      },
      //Codigo por si no se tiene definidas las rutas
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      },
    );
  }
}