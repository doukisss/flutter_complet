// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 92, 1, 248)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page = 0;

  var affichage = <Widget>[
    Center(
      child: Container(
        height: 500,
        width: 500,
        child: Image.asset('images/animaux/chat.jpg'),
      ),
    ),
    Center(
      child: Container(
        height: 500,
        width: 500,
        child: Image.asset('images/animaux/chien.jpg'),
      ),
    ),
    Center(
      child: Container(
        height: 500,
        width: 500,
        child: Image.asset('images/animaux/lapin.jpg'),
      ),
    ),
    Center(
      child: Container(
        height: 500,
        width: 500,
        child: Image.asset('images/animaux/elephant.jpg'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          title: const Text("Tutoriel flutter",
              style: TextStyle(color: Colors.black)),
          actions: <Widget>[
            Icon(Icons.thumb_up, color: Colors.black),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.bounceIn,
          animationDuration: Duration(milliseconds: 600),
          items: <Widget>[
            Icon(
              Icons.beenhere,
              size: 50,
              color: Colors.blue,
            ),
            Icon(
              Icons.camera_roll,
              size: 50,
              color: Colors.tealAccent,
            ),
            Icon(
              Icons.donut_small,
              size: 50,
              color: Colors.green,
            ),
            Icon(
              Icons.dvr,
              size: 50,
              color: Colors.red,
            ),
          ],
          onTap: (value) {
            setState(() {
              page = value;
            });
          },
        ),
        body: Center(
          child: affichage[page],
        ));
  }
}
