// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

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
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.white, Colors.blue, Colors.limeAccent],
                  center: Alignment.topLeft,
                  radius: 2.0,
                  tileMode: TileMode.repeated,
                ),
              ),
              // decoration: const BoxDecoration(
              //   gradient: LinearGradient(
              //     colors: [Colors.white, Colors.blue, Colors.red],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomLeft,
              //     tileMode: TileMode.decal,
              //   ),
              // ),
            )
          ],
        ));
  }
}
