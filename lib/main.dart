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
  Widget womenhair(String holder, String img) {
    return Container(
      width: 200,
      height: 300,
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(75),
            topRight: Radius.circular(75),
          ),
          child: FadeInImage.assetNetwork(
            placeholder: holder,
            image: img,
            fit: BoxFit.fill,
            fadeInDuration: Duration(
              seconds: 5,
            ),
          ),
        ),
      ]),
    );
  }

  Widget titre(String info) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Text(
            info,
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
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
        body: ListView(
          children: [
            FittedBox(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        womenhair("images/Fidget-spinner.gif",
                            "https://i.pinimg.com/564x/0a/81/a2/0a81a2db05859cb9a9d1896d556ef769.jpg"),
                        womenhair("images/Spinner-3.gif",
                            "https://i.pinimg.com/564x/73/dd/d3/73ddd32402246caeb93211a5cb2b9a18.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        titre("Rat Congo"),
                        titre("Classe"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        womenhair("images/Fidget-spinner.gif",
                            "https://i.pinimg.com/474x/99/1d/e8/991de80a9cde10a0a51d10b4b1b82c09.jpg"),
                        womenhair("images/Spinner-3.gif",
                            "https://i.pinimg.com/236x/41/81/42/41814220b9db470a0f21ab45e3d2b786.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        titre("Nature frisé"),
                        titre("création salon"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        womenhair("images/Fidget-spinner.gif",
                            "https://i.pinimg.com/474x/99/1d/e8/991de80a9cde10a0a51d10b4b1b82c09.jpg"),
                        womenhair("images/Spinner-3.gif",
                            "https://i.pinimg.com/236x/41/81/42/41814220b9db470a0f21ab45e3d2b786.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        titre("Nature frisé"),
                        titre("création salon"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        womenhair("images/Fidget-spinner.gif",
                            "https://i.pinimg.com/564x/0a/81/a2/0a81a2db05859cb9a9d1896d556ef769.jpg"),
                        womenhair("images/Spinner-3.gif",
                            "https://i.pinimg.com/564x/73/dd/d3/73ddd32402246caeb93211a5cb2b9a18.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        titre("Rat Congo"),
                        titre("Classe"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        womenhair("images/Fidget-spinner.gif",
                            "https://i.pinimg.com/474x/99/1d/e8/991de80a9cde10a0a51d10b4b1b82c09.jpg"),
                        womenhair("images/Spinner-3.gif",
                            "https://i.pinimg.com/236x/41/81/42/41814220b9db470a0f21ab45e3d2b786.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        titre("Nature frisé"),
                        titre("création salon"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        womenhair("images/Fidget-spinner.gif",
                            "https://i.pinimg.com/474x/99/1d/e8/991de80a9cde10a0a51d10b4b1b82c09.jpg"),
                        womenhair("images/Spinner-3.gif",
                            "https://i.pinimg.com/236x/41/81/42/41814220b9db470a0f21ab45e3d2b786.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        titre("Nature frisé"),
                        titre("création salon"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
