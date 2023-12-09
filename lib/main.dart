import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 92, 1, 248)),
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
  //static const optionalStyle = TextStyle(
  //  color: Colors.blueGr jhey, fontSize: 30, fontWeight: FontWeight.w700);

  Widget movies(auteur, image, titre) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              backgroundImage: NetworkImage(image),
              radius: 30,
              child: Text(
                image.length == 0 ? auteur[0].toUpperCase() : '',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(
              auteur,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              titre,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.blue,
                title: const Text("Tutoriel flutter",
                    style: TextStyle(color: Colors.white)),
                actions: const <Widget>[
                  Icon(Icons.thumb_up, color: Color.fromRGBO(76, 175, 80, 1))
                ],
              ),
              body: ListView(
                children: [
                  movies(
                      ' Lilly Wachowski ',
                      'https://media.senscritique.com/media/000020033620/300/matrix.jpg',
                      ' Matrix'),
                  Divider(
                    height: 10,
                    color: Colors.blueGrey,
                  ),
                  movies('Quentin Tarantino', '', 'Kill Bill'),
                  Divider(
                    height: 10,
                    color: Colors.blueGrey,
                  ),
                  movies(
                      ' John McTiernan',
                      'https://media.senscritique.com/media/000004438662/300/predator.jpg',
                      'Predator'),
                  Divider(
                    height: 10,
                    color: Colors.blueGrey,
                  ),
                  movies(
                      'Gareth Evans',
                      'https://media.senscritique.com/media/000006599639/300/the_raid.jpg',
                      'The Raid'),
                  Divider(
                    height: 10,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            )));
  }
}
