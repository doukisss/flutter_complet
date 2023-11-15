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
                body: Center(
                  child: ListView(
                    children: [
                      const Text(
                        "MENU DU RESTAURENT",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/frites_a_la_viande.jpeg'),
                          TextButton.icon(
                            onPressed: () {
                              var route = MaterialPageRoute(
                                  builder: (BuildContext context) => SeconPage(
                                      val1: 'images/frites_a_la_viande.jpeg',
                                      val2: 'images/frites_a_la_viande.jpeg'));
                              Navigator.of(context).push(route);
                            },
                            icon: const Icon(Icons.food_bank),
                            label: const Text('Détails'),
                          )
                        ],
                      ),
                      const Text(
                        "Frites à la viande de boeuf",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('images/salade_composé.jpeg'),
                          TextButton.icon(
                            onPressed: () {
                              var route = MaterialPageRoute(
                                  builder: (BuildContext context) => SeconPage(
                                      val1: "Salade composé",
                                      val2: 'images/salade_composé.jpeg'));
                              Navigator.of(context).push(route);
                            },
                            icon: const Icon(Icons.food_bank),
                            label: const Text('Détails'),
                          )
                        ],
                      ),
                      const Text(
                        "Salade composé",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 40,
                        ),
                      )
                    ],
                  ),
                ))));
  }
}

class SeconPage extends StatelessWidget {
  final val1;
  final val2;

  const SeconPage({super.key, required this.val1, required this.val2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text("Tutoriel flutter",
              style: TextStyle(color: Colors.white)),
          actions: const <Widget>[Icon(Icons.access_alarm, color: Colors.red)],
        ),
        body: Center(
          child: ListView(
            children: [
              Text(
                val1,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(val2),
                ],
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ));
  }
}
