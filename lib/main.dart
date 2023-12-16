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
                  bottom: TabBar(tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.hotel_sharp,
                        size: 30,
                      ),
                    )
                  ]),
                ),
                body: TabBarView(children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://www.expat.com/upload/housing/750443/1694722497688_3679875-full_size_3x2-t1694835025.jpg",
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                                SizedBox(width: 30),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://www.expat.com/upload/housing/750443/1694722497688_3679875-full_size_3x2-t1694835025.jpg",
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                                SizedBox(width: 30),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://www.expat.com/upload/housing/750443/1694722497688_3679875-full_size_3x2-t1694835025.jpg",
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                                SizedBox(width: 30),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://www.expat.com/upload/housing/750443/1694722497688_3679875-full_size_3x2-t1694835025.jpg",
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://images.pexels.com/photos/3406020/pexels-photo-3406020.jpeg?auto=compress&cs=tinysrgb&w=400",
                              height: 300,
                              width: 300,
                            ),
                          ),
                          SizedBox(height: 30),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://images.pexels.com/photos/3406020/pexels-photo-3406020.jpeg?auto=compress&cs=tinysrgb&w=400",
                              height: 300,
                              width: 300,
                            ),
                          ),
                          SizedBox(height: 30),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://images.pexels.com/photos/3406020/pexels-photo-3406020.jpeg?auto=compress&cs=tinysrgb&w=400",
                              height: 300,
                              width: 300,
                            ),
                          ),
                          SizedBox(height: 30),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://images.pexels.com/photos/3406020/pexels-photo-3406020.jpeg?auto=compress&cs=tinysrgb&w=400",
                              height: 300,
                              width: 300,
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  )
                ]))));
  }
}
