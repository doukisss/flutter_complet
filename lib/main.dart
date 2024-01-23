// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

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
  String categorie1 = "dessert";
  String categorie2 = "Viande";
  String categorie3 = "Poisson";
  String categorie4 = "patte";
  String categorie5 = "volaille";
  String name1 = "Un coca cola";
  String name2 = "De la iande braisé";
  String name3 = "Un poisson braisé";
  String name4 = "un délicieux spaguetti";
  String name5 = "un Poulet braisé";

  String frontimage1 = "images/boisson.jpeg";
  String frontimage2 = "images/viande.jpeg";
  String frontimage3 = "images/poisson_braisé.jpeg";
  String frontimage4 = "images/spaguetti.jpeg";
  String frontimage5 = "images/poulet.jpeg";
  String backimage1 = "images/boisson.jpeg";
  String backimage2 = "images/viande.jpeg";
  String backimage3 = "images/poisson_braisé.jpeg";
  String backimage4 = "images/spaguetti.jpeg";
  String backimage5 = "images/poulet.jpeg";

  Widget flipcards(
      String categorie, String name, String frontimage, String backimage) {
    return Align(
      alignment: Alignment.center,
      child: FlipCard(
        front: Container(
          width: 500,
          height: 600,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Découvrez votre $categorie",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage(
                frontimage,
              ),
            ),
          ),
        ),
        back: Container(
          width: 500,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(image: AssetImage(backimage)),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "$name",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
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
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    flipcards(categorie1, name1, frontimage1, backimage1),
                    const SizedBox(height: 20),
                    flipcards(categorie2, name2, frontimage2, backimage2),
                    const SizedBox(height: 20),
                    flipcards(categorie3, name3, frontimage3, backimage3),
                    const SizedBox(height: 20),
                    flipcards(categorie4, name4, frontimage4, backimage4),
                    const SizedBox(height: 20),
                    flipcards(categorie5, name5, frontimage5, backimage5),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
