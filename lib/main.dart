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
  static const optionalStyle = TextStyle(
      color: Colors.blueGrey, fontSize: 30, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Tutoriel flutter",
            style: TextStyle(color: Colors.white)),
        actions: const <Widget>[Icon(Icons.thumb_up, color: Colors.green)],
      ),
      body: Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.amber,
                  )),
            ],
          ),
          Container(
            color: Colors.green,
            height: 500,
            width: 320,
            margin: const EdgeInsets.all(20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10),
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.purple,
                      height: 100,
                      width: 100,
                    )
                  ],
                )
              ],
            ),
          )
        ],
        /* child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              height: 250,
              width: 250,
              color: Colors.amberAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            )
          ],
        ), */
      ),
    );
  }
}
