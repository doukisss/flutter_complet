// ignore_for_file: empty_constructor_bodies

import 'dart:async';

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
  double width = 110;
  double height = 140;

  @override
  Widget build(BuildContext context) {
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
        body: Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/f1.jpg",
                  width: 110,
                  height: 140,
                ),
                Image.asset(
                  "images/f1.jpg",
                  width: 110,
                  height: 140,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "FLEURISTE BIO",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    width += 100;
                                    height += 100;
                                  });
                                },
                                child: Icon(
                                  Icons.zoom_in,
                                  size: 30,
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.bounceInOut,
                                child: Image.asset(
                                  "images/f1.jpg",
                                  width: width,
                                  height: height,
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    if (width > 100 || height > 100) {
                                      width -= 100;
                                      height -= 100;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.zoom_out,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                          Image.asset(
                            "images/f1.jpg",
                            width: 110,
                            height: 140,
                          ),
                          Image.asset(
                            "images/f1.jpg",
                            width: 110,
                            height: 140,
                          ),
                          Image.asset(
                            "images/f1.jpg",
                            width: 110,
                            height: 140,
                          ),
                          Image.asset(
                            "images/f1.jpg",
                            width: 110,
                            height: 140,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
