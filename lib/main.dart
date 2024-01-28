// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

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
  bool opacite = true;

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
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/pizza.jpeg"),
                      fit: BoxFit.cover)),
            ),
            Padding(
                padding: EdgeInsets.only(top: 50, left: 50),
                child: AnimatedOpacity(
                  opacity: opacite ? 1.0 : 0.0,
                  duration: Duration(
                    seconds: 2,
                  ),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/animaux/chat.jpg"),
                            fit: BoxFit.contain)),
                  ),
                )),
            Align(
                alignment: Alignment.topCenter,
                child: Opacity(
                  opacity: opacite ? 1.0 : 0.5,
                  child: Text(
                    "OPACITY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                )),
            Align(
                alignment: Alignment.bottomCenter,
                child: Opacity(
                    opacity: opacite ? 1.0 : 0.5,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          opacite = !opacite;
                        });
                      },
                      child: Text(
                        "GO ON >>",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ));
  }
}
