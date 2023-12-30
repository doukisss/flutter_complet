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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(
                      'images/animaux/chat.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      left: 100,
                      child: Container(
                        width: 60,
                        height: 30,
                        color: Colors.orange,
                        alignment: Alignment.center,
                        child: Text(
                          'félin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(
                      'images/animaux/chien.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      right: 50,
                      child: Container(
                        width: 60,
                        height: 30,
                        color: Colors.blue,
                        alignment: Alignment.center,
                        child: Text(
                          'canin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(
                      'images/animaux/lapin.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 150,
                      child: Container(
                        width: 60,
                        height: 30,
                        color: Colors.green,
                        alignment: Alignment.center,
                        child: Text(
                          'rongeur',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image.asset(
                      'images/animaux/elephant.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                  Positioned(
                      top: 150,
                      left: 150,
                      child: Container(
                        width: 60,
                        height: 30,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Text(
                          'herbivore',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
