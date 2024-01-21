// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

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
      body:
          Container(child: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return tablemeteo();
        } else {
          return tablemeteo();
        }
      })),
    );
  }
}

Widget tablemeteo() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "TABLEAU METEO",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        Divider(
          height: 30,
        ),
        DataTable(columns: <DataColumn>[
          DataColumn(label: Text("Vent")),
          DataColumn(label: Text("Visibilité")),
          DataColumn(label: Text("Humudité")),
          DataColumn(label: Text("Levée du soleil")),
        ], rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(ListTile(
                title: Text("75km/h"),
              )),
              DataCell(ListTile(
                title: Text("53"),
              )),
              DataCell(ListTile(
                title: Text("14km"),
              )),
              DataCell(ListTile(
                title: Text("6h20"),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(ListTile(
                title: Text("72km/h"),
              )),
              DataCell(ListTile(
                title: Text("50"),
              )),
              DataCell(ListTile(
                title: Text("16km"),
              )),
              DataCell(ListTile(
                title: Text("6h25"),
              )),
            ],
          ),
        ])
      ],
    ),
  );
}
