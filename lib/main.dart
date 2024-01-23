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
  List<Container> containerlist = [];
  final poster = [
    {"name": "Menu", "photo": "menu.jpeg"},
    {"name": "Boisson", "photo": "boisson.jpeg"},
    {"name": "frites à la viande", "photo": "frites_a_la_viande.jpeg"},
    {"name": "Humburger", "photo": "humburger.jpeg"},
    {"name": "Pizza", "photo": "pizza.jpeg"},
    {"name": "Poisson braisé", "photo": "poisson_braisé.jpeg"},
    {"name": "Poulet", "photo": "poulet.jpeg"},
    {"name": "Salade composé", "photo": "salade_composé.jpeg"},
    {"name": "Spaguetti", "photo": "spaguetti.jpeg"},
    {"name": "viande", "photo": "viande.jpeg"},
  ];

  buildlist() {
    for (var i = 0; i < poster.length; i++) {
      var gleinfo = poster[i];
      var infophoto = gleinfo["photo"];
      var infoname = gleinfo["name"];
      int pourcentage = 85 + i;
      containerlist.add(Container(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Hero(
                    tag: "$infoname",
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Showdetail(
                                  namedetail: "$infoname",
                                  posterdetail: "$infophoto",
                                  percent: pourcentage)));
                        },
                        child: Container(
                          height: 157,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("images/$infophoto"))),
                        ),
                      ),
                    )),
              ),
              Text("$infoname"),
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    buildlist();
    super.initState();
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
        child: GridView.count(crossAxisCount: 2, children: containerlist),
      ),
    );
  }
}

class Showdetail extends StatelessWidget {
  final String namedetail, posterdetail;
  int percent;
  Showdetail(
      {required this.namedetail,
      required this.posterdetail,
      required this.percent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.movie_creation,
              ))
        ],
        title: Text(
          namedetail,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Container(
            height: 530,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(
                      "images/$posterdetail",
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow_sharp,
                    size: 30,
                    color: Colors.red,
                  ),
                  Text(
                    "Play trial",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$percent% liked this food",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.thumb_up,
                  size: 30,
                  color: Colors.green,
                ),
                Icon(
                  Icons.thumb_down,
                  size: 30,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "Description bsefj ebek efbhjk fbhskljh rgbfsb dbskfjshlj hfhfsjbf dfghfgjfsjk efgsfdjfh defhfj sugfebf gfsfh sfsfhb  ehjb hbf h sqebf fb")
              ],
            ),
          )
        ],
      ),
    );
  }
}
