// ignore_for_file: empty_constructor_bodies

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
  static List<String> images = [
    "images/vin1.jpg",
    "images/vin2.jpg",
    "images/vin3.jpg",
    "images/vin4.jpg",
  ];
  static List<String> namelist = [
    "Pessac Leognan",
    "Bordeaux Blanc Bio",
    "Bordeaux Rosé",
    "Crémant Bordeau",
  ];
  static List<String> pricelist = [
    "15000 CFA",
    "25000 CFA",
    "35000 CFA",
    "45000 CFA",
  ];
  int i = 0;
  String price = "15000 CFA";
  String name = "Pessac Leognan";
  Widget image = Image.asset(
    images[0],
    key: Key(images[0]),
    width: 400,
    height: 700,
  );
  void suivant() {
    if (i < images.length - 1) {
      i++;
      setState(() {
        image = Image.asset(
          images[i],
          width: 400,
          height: 700,
          key: Key(images[i]),
        );
        name = namelist[i].toString();
        price = pricelist[i].toString();
      });
    }
  }

  void precedent() {
    if (i > 0) {
      i--;
      setState(() {
        image = Image.asset(
          images[i],
          width: 400,
          height: 700,
          key: Key(images[i]),
        );

        name = namelist[i].toString();
        price = pricelist[i].toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(
        // centerTitle: true,
        // leading: IconButton(
        //   icon: Container(
        //     width: 30,
        //     height: 30,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.all(Radius.circular(10)),
        //     ),
        //     child: Icon(
        //       Icons.keyboard_arrow_left,
        //       size: 30,
        //     ),
        //   ),
        //   onPressed: () {},
        // ),
        // elevation: 10,
        // title: const Text(
        //   "Air-Nike 2.0",
        //   style: TextStyle(
        //       color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
        // ),
        // actions: <Widget>[
        //   Icon(Icons.shopping_cart, size: 40, color: Colors.black),
        // ],
        //),
        body: Container(
      //color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 12,
            child: Container(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xff680406),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60),
                                bottomLeft: Radius.circular(60),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 250,
                                  height: 150,
                                  //color: Colors.green,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.arrow_left,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Vin de luxe",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Icon(
                                            Icons.search,
                                            size: 40,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                      Text(
                                        "District d'Abidjan",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                      Text(
                                        name,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 30,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            //color: Colors.yellow,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 50,
                                    left: 150,
                                    right: 10,
                                    bottom: 250,
                                  ),
                                  child: Container(
                                    //color: Colors.green,
                                    child: Column(
                                      children: [
                                        Text(
                                          price,
                                          style: TextStyle(
                                              color: Color(0xff680406),
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Alcool: 12.5%",
                                              style: TextStyle(
                                                  color: Color(0xff680406),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "300ml",
                                              style: TextStyle(
                                                  color: Color(0xff680406),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                precedent();
                                              },
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  color: Color(0xff680406),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_back,
                                                  size: 40,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            InkWell(
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  color: Color(0xff680406),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 40,
                                                ),
                                              ),
                                              onTap: () {
                                                suivant();
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 270,
                                    left: 20,
                                    right: 20,
                                    bottom: 50,
                                  ),
                                  child: Container(
                                    //color: Colors.blue,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Description",
                                          style: TextStyle(
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 125,
                    child: Container(
                      child: AnimatedSwitcher(
                          duration: Duration(seconds: 1),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            // return ScaleTransition(
                            //   scale: animation,
                            //   child: child,
                            //);
                            final posiAni = Tween<Offset>(
                                    begin: Offset(0, -1), end: Offset(0, 0))
                                .animate(animation);
                            return SlideTransition(
                              position: posiAni,
                              child: child,
                            );
                          },
                          child: image),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff680406),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Ajouter aux panier",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "|",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "CAISSE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
