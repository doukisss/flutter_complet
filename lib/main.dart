import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
  //  color: Colors.blueGrey, fontSize: 30, fontWeight: FontWeight.w700);

  Widget resto(String menu, Color color, String image) {
    return Container(
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 150,
            width: 150,
          ),
          Text(
            menu,
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }

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
                    Icon(Icons.thumb_up, color: Colors.green)
                  ],
                ),
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      floating: false,
                      pinned: true,
                      expandedHeight: 200,
                      backgroundColor: Colors.transparent,
                      flexibleSpace: FlexibleSpaceBar(
                        title: const Text(
                          "Menu du Restaurant",
                          style: TextStyle(color: Colors.white),
                        ),
                        background: Image.asset(
                          "images/menu.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SliverFixedExtentList(
                      itemExtent: 150,
                      delegate: SliverChildListDelegate(
                        [
                          resto('Frite à la viande', Colors.blue,
                              'images/frites_a_la_viande.jpeg'),
                          resto('Salade composé', Colors.blue,
                              'images/salade_composé.jpeg'),
                          resto('Boisson', Colors.blue, 'images/boisson.jpeg'),
                          resto('Humburger', Colors.blue,
                              'images/humburger.jpeg'),
                          resto('Pizza', Colors.blue, 'images/pizza.jpeg'),
                          resto('Poisson braisé', Colors.blue,
                              'images/poisson_braisé.jpeg'),
                          resto('Poulet', Colors.blue, 'images/poulet.jpeg'),
                          resto('Spaguetti.jpeg', Colors.blue,
                              'images/spaguetti.jpeg'),
                          resto('Viande', Colors.blue, 'images/viande.jpeg'),
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
