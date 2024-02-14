// ignore_for_file: empty_constructor_bodies

import 'package:charts_flutter_new/flutter.dart' as charts;

import 'package:flutter/material.dart';

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
  List<InfoList> execute = [
    InfoList("images/boisson.jpeg", "Sprite", "13/02/2024", Colors.orange),
    InfoList("images/pizza.jpeg", "Pizza", "13/02/2024", Colors.orange),
    InfoList("images/humburger.jpeg", "Humburger", "13/02/2024", Colors.orange),
    InfoList(
        "images/frites_a_la_viande.jpeg", "Frite", "13/02/2024", Colors.orange),
    InfoList("images/fusée3.jpg", "Fusée", "13/02/2024", Colors.orange),
    InfoList("images/poulet.jpeg", "Poulet", "13/02/2024", Colors.orange),
    InfoList("images/spaguetti.jpeg", "Spaguetti", "13/02/2024", Colors.orange),
    InfoList("images/viande.jpeg", "Viande", "13/02/2024", Colors.orange),
    InfoList("images/poisson_braisé.jpeg", "Poisson braisé", "13/02/2024",
        Colors.orange),
    InfoList("images/salade_composé.jpeg", "Salade composé", "13/02/2024",
        Colors.orange),
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
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: execute.length,
            itemBuilder: ((context, index) {
              InfoList ls = execute[index];
              return Dismissible(
                key: Key(ls.detail),
                child: WidgetInfo(
                  entry: execute[index],
                  key: Key(ls.detail),
                ),
                onDismissed: (direction) {
                  setState(() {
                    execute.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      ls.detail + " supprimé",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    action: SnackBarAction(
                        label: "Annuler",
                        onPressed: () {
                          setState(() {
                            execute.add(ls);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              ls.detail + " rajouté en fin de liste",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ));
                        }),
                  ));
                },
                background: Container(
                  color: ls.color,
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        size: 25,
                      ),
                      Text(
                        ls.detail + " sera supprimé.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                secondaryBackground: Container(
                  color: ls.color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.delete_forever,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              );
            })));
  }
}

class InfoList {
  String image;
  String detail;
  String date;
  Color color;
  InfoList(this.image, this.detail, this.date, this.color);
}

class WidgetInfo extends StatelessWidget {
  final InfoList entry;

  const WidgetInfo({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  entry.image,
                  width: 70,
                  height: 70,
                ),
                Text(
                  entry.detail,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  entry.date,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                  width: 2,
                  child: Container(
                    color: entry.color,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: SizedBox(
              height: 2,
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
