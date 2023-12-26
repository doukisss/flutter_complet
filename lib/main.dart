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
  Animaux selectitem = choix[0];

  void select(info) {
    setState(() {
      selectitem = info;
    });
  }

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
            PopupMenuButton(
              icon: Icon(
                Icons.menu,
                size: 40,
              ),
              elevation: 14,
              initialValue: choix[1],
              onSelected: select,
              itemBuilder: (BuildContext context) {
                return choix.map((Animaux info) {
                  return PopupMenuItem<Animaux>(
                    child: Text(info.name),
                    value: info,
                  );
                }).toList();
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Affichage(info: selectitem)],
          ),
        ));
  }
}

class Animaux {
  String name;
  String image;
  Animaux({required this.name, required this.image});
}

List<Animaux> choix = <Animaux>[
  Animaux(name: "Chat", image: "images/animaux/chat.jpg"),
  Animaux(name: "Chien", image: "images/animaux/chien.jpg"),
  Animaux(name: "Lion", image: "images/animaux/lion.jpg"),
  Animaux(name: "Lapin", image: "images/animaux/lapin.jpg"),
  Animaux(name: "Elephant", image: "images/animaux/elephant.jpg"),
  Animaux(name: "Elephant", image: "images/animaux/elephant1.jpg"),
  Animaux(name: "Pommes", image: "images/animaux/pommes.jpg"),
];

class Affichage extends StatelessWidget {
  Animaux info;
  Affichage({required this.info});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(
              info.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              info.image,
              height: 300,
              width: 300,
            )
          ],
        ),
      ),
    );
  }
}
