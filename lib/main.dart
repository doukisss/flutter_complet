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
  double padding = 100;
  Widget element(String image, Curve curve) {
    return AnimatedPadding(
      padding: EdgeInsets.all(padding),
      duration: Duration(
        seconds: 1,
      ),
      curve: curve,
      child: Image.asset(
        image,
      ),
    );
  }

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
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  child: Image(
                    image: AssetImage("images/f9.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.add_shopping_cart, size: 60)],
                ),
              ),
              Positioned(
                width: 25,
                height: 25,
                top: 60,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red,
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  right: 30,
                  child: Row(
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            if (padding <
                                MediaQuery.of(context).size.width / 2 - 25) {
                              padding += 25;
                            }
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            if (padding > 25) {
                              padding -= 25;
                            }
                          });
                        },
                      ),
                    ],
                  ))
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  element("images/f1.jpg", Curves.bounceIn),
                  element("images/f2.jpg", Curves.bounceInOut),
                  element("images/f3.jpg", Curves.bounceOut),
                  element("images/f4.jpg", Curves.decelerate),
                  element("images/f5.jpg", Curves.linear),
                  element("images/f6.jpg", Curves.ease),
                  element("images/f7.jpg", Curves.easeInOut),
                  element("images/f8.jpg", Curves.elasticInOut),
                  element("images/f9.jpg", Curves.easeOutCirc),
                ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
