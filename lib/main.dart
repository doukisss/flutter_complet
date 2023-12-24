import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

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
  String info = '';
  bool change = true;

  String a = 'images/boisson.jpeg';
  String b = 'images/pizza.jpeg';
  String c = 'images/poulet.jpeg';
  String d = 'images/viande.jpeg';

  void onsubmit(String value) {
    setState(() {
      info = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          title: const Text("Tutoriel flutter",
              style: TextStyle(color: Colors.black)),
          actions: const <Widget>[Icon(Icons.thumb_up, color: Colors.black)],
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text(
                  "Mouvement de la souris: $info",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      change ? a : b,
                      height: 170,
                      width: 170,
                    ),
                    Image.asset(
                      change ? d : c,
                      height: 170,
                      width: 170,
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (change = true) {
                        onsubmit("un clique");
                      } else {
                        change = false;
                      }
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      if (change = false) {
                        onsubmit("double clique");
                      } else {
                        change = true;
                      }
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      if (change = true) {
                        onsubmit("long clique");
                      } else {
                        change = false;
                      }
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      if (change = false) {
                        onsubmit("clique annulé");
                      } else {
                        change = true;
                      }
                    });
                  },
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "VALIDATE",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
