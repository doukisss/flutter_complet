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
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey3 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey4 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey5 = GlobalKey<SimpleFoldingCellState>();

  Widget _frontView(String menu, String image,
      GlobalKey<SimpleFoldingCellState> foldindcell) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.blue,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Align(
            child: Text(
              "Menu du restaurant",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Icon(
                            Icons.restaurant,
                            size: 30,
                          ),
                          Text(
                            menu,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(image: AssetImage(image))),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 5,
              right: 5,
              child: TextButton(
                onPressed: () => foldindcell.currentState?.toggleFold(),
                child: Text(
                  "Ouvrir",
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget _innerView(String menu, String image, String prix, String description,
      GlobalKey<SimpleFoldingCellState> foldingcell) {
    return Container(
      color: Colors.purple,
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Text(
                        menu,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: AssetImage(image))),
                      ),
                    ]),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "PRIX: $prix",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Description",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              description,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: TextButton(
                      onPressed: () => foldingcell.currentState?.toggleFold(),
                      child: Text("Fermer")))
            ],
          )
        ],
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
        body: Container(
          color: Colors.white10,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SimpleFoldingCell.create(
                key: _foldingCellKey,
                frontWidget: _frontView(
                    "Boisson", "images/boisson.jpeg", _foldingCellKey),
                innerWidget: _innerView(
                    "Coca cola",
                    "images/boisson.jpeg",
                    "1000 CFA",
                    "qfysguih uiopsjgkgj izrjgtrjk ioejrgjdpjk _çàguierokeop ijgeroeop iàjteyo tiàgoperk niàe fldfgnjfklj jgdjfm rjg s sdoj totigeokg tiàuzogitero",
                    _foldingCellKey),
                cellSize: Size(MediaQuery.of(context).size.width, 200),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 30,
              ),
              SimpleFoldingCell.create(
                key: _foldingCellKey1,
                frontWidget: _frontView(
                    "Poulet", "images/poulet.jpeg", _foldingCellKey1),
                innerWidget: _innerView(
                  "Poulet braisé",
                  "images/poulet.jpeg",
                  "5000 CFA",
                  "qfysguih uiopsjgkgj izrjgtrjk ioejrgjdpjk _çàguierokeop ijgeroeop iàjteyo tiàgoperk niàe fldfgnjfklj jgdjfm rjg s sdoj totigeokg tiàuzogitero",
                  _foldingCellKey1,
                ),
                cellSize: Size(MediaQuery.of(context).size.width, 200),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 30,
              ),
              SimpleFoldingCell.create(
                key: _foldingCellKey2,
                frontWidget: _frontView(
                    "Poisson", "images/poisson_braisé.jpeg", _foldingCellKey2),
                innerWidget: _innerView(
                    "Poisson braisé",
                    "images/poisson_braisé.jpeg",
                    "4000 CFA",
                    "qfysguih uiopsjgkgj izrjgtrjk ioejrgjdpjk _çàguierokeop ijgeroeop iàjteyo tiàgoperk niàe fldfgnjfklj jgdjfm rjg s sdoj totigeokg tiàuzogitero",
                    _foldingCellKey2),
                cellSize: Size(MediaQuery.of(context).size.width, 200),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 30,
              ),
              SimpleFoldingCell.create(
                key: _foldingCellKey3,
                frontWidget: _frontView(
                    "Viande", "images/viande.jpeg", _foldingCellKey3),
                innerWidget: _innerView(
                    "Viande braisé",
                    "images/viande.jpeg",
                    "6000 CFA",
                    "qfysguih uiopsjgkgj izrjgtrjk ioejrgjdpjk _çàguierokeop ijgeroeop iàjteyo tiàgoperk niàe fldfgnjfklj jgdjfm rjg s sdoj totigeokg tiàuzogitero",
                    _foldingCellKey3),
                cellSize: Size(MediaQuery.of(context).size.width, 200),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 30,
              ),
              SimpleFoldingCell.create(
                key: _foldingCellKey4,
                frontWidget: _frontView(
                    "Spaghetti", "images/spaguetti.jpeg", _foldingCellKey4),
                innerWidget: _innerView(
                    "Spaghetti",
                    "images/spaguetti.jpeg",
                    "2000 CFA",
                    "qfysguih uiopsjgkgj izrjgtrjk ioejrgjdpjk _çàguierokeop ijgeroeop iàjteyo tiàgoperk niàe fldfgnjfklj jgdjfm rjg s sdoj totigeokg tiàuzogitero",
                    _foldingCellKey4),
                cellSize: Size(MediaQuery.of(context).size.width, 200),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 30,
              ),
              SimpleFoldingCell.create(
                key: _foldingCellKey5,
                frontWidget: _frontView(
                    "Salade", "images/salade_composé.jpeg", _foldingCellKey5),
                innerWidget: _innerView(
                    "Salade composé",
                    "images/salade_composé.jpeg",
                    "3000 CFA",
                    "qfysguih uiopsjgkgj izrjgtrjk ioejrgjdpjk _çàguierokeop ijgeroeop iàjteyo tiàgoperk niàe fldfgnjfklj jgdjfm rjg s sdoj totigeokg tiàuzogitero",
                    _foldingCellKey5),
                cellSize: Size(MediaQuery.of(context).size.width, 200),
                animationDuration: const Duration(milliseconds: 300),
                borderRadius: 30,
              ),
            ],
          ),
        ));
  }
}
