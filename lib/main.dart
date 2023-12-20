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

  List<DropdownMenuItem<String>>? listmonth = [];
  String def = 'Janvier';

  void months() {
    listmonth!.clear();
    listmonth!.add(
      const DropdownMenuItem(
        value: 'Janvier',
        child: Text(
          "Janvier",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
    listmonth!.add(
      const DropdownMenuItem(
        value: 'Février',
        child: Text(
          "Février",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
    listmonth!.add(
      const DropdownMenuItem(
        value: 'Mars',
        child: Text(
          "Mars",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
    listmonth!.add(
      const DropdownMenuItem(
        value: 'Avril',
        child: Text(
          "Avril",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
    listmonth!.add(
      const DropdownMenuItem(
        value: 'Mai',
        child: Text(
          "Mai",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
    listmonth!.add(
      const DropdownMenuItem(
        value: 'Juin',
        child: Text(
          "Juin",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    months();
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
                  child: Center(
                    child: Column(
                      children: [
                        Center(
                          child: DropdownButton(
                              value: def,
                              elevation: 10,
                              hint: Text(
                                "Selectionner votre mois",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              items: listmonth,
                              onChanged: (value) {
                                def = value!;
                                setState(() {});
                              }),
                        ),
                        Container(
                          child: Text(
                            "Le mois selectionner est: $def",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ))));
  }
}
