import 'package:flutter/material.dart';

import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    var myHome = const MyHomePage(title: 'Flutter Demo Home Page');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo', //titulo
      theme: ThemeData(
          //Tema do app
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 115, 182, 236))
      ),
      home: myHome
    );
  }
}
