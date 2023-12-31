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
  Widget resto(String image, Color color, String title, String resume) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: 340,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                image,
                              ),
                              fit: BoxFit.cover)),
                    ))
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.star,
                    color: color,
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.star,
                    color: color,
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.star,
                    color: color,
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.star,
                    color: color,
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  child: Icon(
                    Icons.star_border,
                    color: color,
                  ),
                ),
                Container(
                  width: 200,
                  child: ExpansionTile(
                    title: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [Text(resume)],
                  ),
                )
              ],
            )
          ],
        )
      ],
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            resto('images/boisson.jpeg', Colors.blue, 'Boisson',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
            resto(
                'images/frites_a_la_viande.jpeg',
                Colors.orange,
                'Frites à la viande',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            resto('images/humburger.jpeg', Colors.red, 'Humburger',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            resto('images/pizza.jpeg', Colors.green, 'Pizza',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            resto('images/poisson_braisé.jpeg', Colors.black, 'Poisson braisé',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            resto('images/poulet.jpeg', Colors.lime, 'Poulet',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            resto('images/spaguetti.jpeg', Colors.purple, 'Spaguetti',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
            resto('images/viande.jpeg', Colors.indigo, 'Viande',
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
          ],
        )));
  }
}
