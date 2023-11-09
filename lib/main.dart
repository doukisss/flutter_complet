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
                  bottom: const TabBar(tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.ac_unit),
                    ),
                    Tab(
                      icon: Icon(Icons.access_alarm),
                    ),
                    Tab(
                      icon: Icon(Icons.account_balance_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.account_circle),
                    ),
                    Tab(
                      icon: Icon(Icons.add_task),
                    ),
                  ]),
                ),
                body: TabBarView(children: <Widget>[
                  Card(color: Colors.blue, child: Image.asset('images/1.jpeg')),
                  Card(
                      color: Colors.green, child: Image.asset('images/2.jpeg')),
                  Card(color: Colors.red, child: Image.asset('images/3.jpeg')),
                  Card(
                      color: Colors.amberAccent,
                      child: Image.asset('images/4.jpeg')),
                  Card(
                      color: Colors.yellow,
                      child: Image.asset('images/5.jpeg')),
                ]))));
  }
}
