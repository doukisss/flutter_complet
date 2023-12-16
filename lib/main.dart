import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
                body: Container(
                    margin: const EdgeInsets.all(10),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: List.generate(infos.length, (index) {
                        return Showhouses(verif: infos[index]);
                      }),
                    )))));
  }
}

class House {
  String image;
  String title;
  String city;
  House({required this.image, required this.title, required this.city});
}

List<House> infos = [
  House(
      image:
          'https://www.expat.com/upload/housing/751916/1696876672493_3001865-full_size_3x2-t1696876771.jpg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/751916/1696876672626_3001865-full_size_3x2-t1696876774.jpg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/751916/1696876672574_3001865-full_size_3x2-t1696876774.jpg',
      title: '6 ROOM DUPLEX VILLA ',
      city: 'RIVIERA 4'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722465219_3679875-full_size_3x2-t1694835025.jpg',
      title: '6 room duplex villa',
      city: 'Riviera 3'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722489180_3679875-full_size_3x2-t1694835025.jpg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722497688_3679875-full_size_3x2-t1694835025.jpg',
      title: 'low 5 room villa',
      city: '2 Plateau'),
  House(
      image:
          'https://www.expat.com/upload/housing/751916/1696876672493_3001865-full_size_3x2-t1696876771.jpg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/751916/1696876672626_3001865-full_size_3x2-t1696876774.jpg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/751916/1696876672574_3001865-full_size_3x2-t1696876774.jpg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722465219_3679875-full_size_3x2-t1694835025.jpg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722489180_3679875-full_size_3x2-t1694835025.jpg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722497688_3679875-full_size_3x2-t1694835025.jpg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750352/1694700846349_3001865-full_size_3x2-t1694701032.jpeg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750352/1694700837060_3001865-full_size_3x2-t1694701031.jpeg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750443/1694722522487_3679875-full_size_3x2-t1694835025.jpg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750352/1694700832242_3001865-full_size_3x2-t1694701031.jpeg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750352/1694700837060_3001865-full_size_3x2-t1694701031.jpeg',
      title: 'Villa Riviera 3',
      city: 'Abidjan'),
  House(
      image:
          'https://www.expat.com/upload/housing/750352/1694700846349_3001865-full_size_3x2-t1694701032.jpeg',
      title: 'DUPLEX VILLA',
      city: 'Abidjan'),
];

class Showhouses extends StatelessWidget {
  final House verif;
  const Showhouses({super.key, required this.verif});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          child: Image.network(
            verif.image,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        Text(
          verif.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          verif.city,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
