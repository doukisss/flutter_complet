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
  @override
  Widget build(BuildContext context) {
    List<PowerCountry> datacountry = [
      PowerCountry("USA", 329665656, Colors.red),
      PowerCountry("Chine", 1433675765, Colors.blue),
      PowerCountry("Russie", 145872256, Colors.green),
      PowerCountry("Allemagne", 83517045, Colors.orange),
      PowerCountry("UK", 67530172, Colors.pink),
      PowerCountry("Japon", 126860301, Colors.grey),
      PowerCountry("Canada", 37411045, Colors.cyanAccent),
    ];

    var series = [
      charts.Series(
        domainFn: (PowerCountry PowerCountry, _) => PowerCountry.country,
        measureFn: (PowerCountry PowerCountry, _) => PowerCountry.population,
        colorFn: (PowerCountry PowerCountry, _) => PowerCountry.color,
        id: "PowerCountry",
        data: datacountry,
        labelAccessorFn: (PowerCountry PowerCountry, _) =>
            "${PowerCountry.country}: ${PowerCountry.population.toString()}",
      )
    ];

    var chart = charts.BarChart(
      series,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
    );

    // var chart1 =new charts.PieChart(
    //   series,
    //   defaultRenderer:new charts.ArcRendererConfig(
    //     arcRendererDecorators: [new charts.ArcLabelDecorator()],
    //     arcWidth: 80,
    //   ),
    //   animate: true,
    // );

    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: Colors.purpleAccent,
        //   title: const Text("Tutoriel flutter",
        //       style: TextStyle(color: Colors.black)),
        //   actions: <Widget>[
        //     Icon(Icons.thumb_up, color: Colors.black),
        //   ],
        // ),
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          const Text(
            "The powerfull countries",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          SizedBox(
            height: 275,
            child: chart,
          ),
          // SizedBox(
          //   height: 275,
          //   child: chart1,
          // ),
        ],
      ),
    )));
  }
}

class PowerCountry {
  final String country;
  final int population;
  final charts.Color color;

  PowerCountry(this.country, this.population, Color color)
      : this.color = charts.Color(
            g: color.green, r: color.red, a: color.alpha, b: color.blue);
}
