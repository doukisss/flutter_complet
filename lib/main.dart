// ignore_for_file: empty_constructor_bodies

import 'dart:async';
import 'dart:ffi';

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
  int index = 0;
  double rep = 0.0;
  late Timer timer;
  List<double> value = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        rep = value[index];
        index++;
        if (index == value.length) {
          index = 0;
        }
      });
    });
  }

  Widget rotation() {
    return Container(
        child: Transform.rotate(
      angle: rep,
      origin: Offset(0.0, 0.0),
      child: Image(
        image: AssetImage("images/terre4.png"),
        width: 150,
        height: 150,
      ),
    ));
  }

  Widget scale() {
    return Container(
      child: Transform.scale(
        scale: rep == 0 ? 0 : rep / 50,
        origin: Offset(0.0, 0.0),
        child: Image(
          image: AssetImage("images/soleil1.jpeg"),
          width: 150,
          height: 150,
        ),
      ),
    );
  }

  Widget tranlate() {
    return Container(
      child: Transform.translate(
        offset: Offset(rep, -rep * 4),
        child: Image(
          image: AssetImage("images/fusée3.jpg"),
          width: 150,
          height: 150,
        ),
      ),
    );
  }

  Widget skew() {
    return Container(
      child: Transform(
        transform: Matrix4.skewX(rep / 100),
        child: Image(
          image: AssetImage("images/satellite3.jpeg"),
          width: 150,
          height: 150,
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
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                scale(),
                rotation(),
                skew(),
                tranlate(),
              ],
            ),
          ),
        ));
  }
}
