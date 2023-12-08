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

  List<String> listimages = [];
  late CarouselSlider instance;

  String a =
      'https://media.istockphoto.com/id/1413281342/photo/dreamy-red-fox-looking-up-on-meadow-with-copy-space.jpg?s=1024x1024&w=is&k=20&c=JjKIP4tMPwBL-YehZSA5u43mIw2nogE5DnQlt8qZ0sA=';
  String b =
      'https://media.istockphoto.com/id/1286671324/photo/red-fox-in-the-grass.jpg?s=1024x1024&w=is&k=20&c=UDAGhtd23U44aXONGlJMB_DRZBL2HtoQi0F3LPQwSLg=';
  String c =
      'https://media.istockphoto.com/id/1245875043/photo/orange-fur-coat-animal-in-the-nature-habitat-fox-on-the-green-forest-meadow-red-fox-jumping.jpg?s=1024x1024&w=is&k=20&c=Cy7kWWyShILYbJ1soWkWT1iMS9mWkpMLCahNueYjoko=';
  String d =
      'https://media.istockphoto.com/id/1254047189/photo/running-red-fox-vulpes-vulpes-at-snow-winter.jpg?s=1024x1024&w=is&k=20&c=rRLyYJM9mfuMQlki_JnIvFZmvc4jNzn5SrgeyL14KZM=';
  String e =
      'https://media.istockphoto.com/id/1263686562/photo/red-fox-jumping-vulpes-vulpes-wildlife-scene-from-europe-orange-fur-coat-animal-in-the-nature.jpg?s=1024x1024&w=is&k=20&c=gVv8T4Trb2c-r_qVPWG-yV8gkRzcM6ic1wSI3vFUK2Q=';
  String f =
      'https://media.istockphoto.com/id/1253352420/photo/red-fox-in-the-nature-forest-habitat-red-foc-taken-with-wide-angle-lens-animal-with-tree.jpg?s=1024x1024&w=is&k=20&c=2NsQjkGtKwGqgmOw2EjvWGUblMpkevAHmHQCxVisykY=';
  String g =
      'https://media.istockphoto.com/id/1408034749/photo/red-fox-stock-photo-and-image-close-up-profile-view-with-blur-forest-and-birch-trees.jpg?s=1024x1024&w=is&k=20&c=1CVhCwZV-8JuEofdIutzFcLazaRT0LgzisV9Es4ol3Y=';
  String h =
      'https://media.istockphoto.com/id/1415204702/photo/red-fox-stock-photo-and-image-basking-in-the-last-rays-of-the-setting-evening-sun-in-its.jpg?s=1024x1024&w=is&k=20&c=5LFf5L-tKI6H92Zpe1RlqJoIzMQW9lgFkJUBYsE2qR8=';
  String i =
      'https://media.istockphoto.com/id/684790724/photo/red-fox.jpg?s=1024x1024&w=is&k=20&c=GwgUDYPLN476ERCRRD5jZyXBeeqhils2GAAD_uIfqJk=';
  String j =
      'https://media.istockphoto.com/id/1360515847/photo/grazing-from-the-grass.jpg?s=1024x1024&w=is&k=20&c=PiULldPSVnAJ9nnTSgu_JJ6Rbb3AOC2foY5z18X5nlQ=';

  @override
  void initState() {
    super.initState();
    listimages.add(a);
    listimages.add(b);
    listimages.add(c);
    listimages.add(d);
    listimages.add(e);
    listimages.add(f);
    listimages.add(g);
    listimages.add(h);
    listimages.add(i);
    listimages.add(j);
  }

  @override
  Widget build(BuildContext context) {
    instance = CarouselSlider(
      options: CarouselOptions(
          enableInfiniteScroll: true,
          initialPage: 0,
          scrollDirection: Axis.horizontal,
          height: MediaQuery.of(context).size.height-100
          ),
      items: listimages.map((e) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Image.network(e)],
          ),
        );
      }).toList(),
    );

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
                body: Column(children: [
                  instance,
                ]))));
  }
}
