// ignore_for_file: empty_constructor_bodies

import 'dart:async';

import 'package:video_player/video_player.dart';

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
  late VideoPlayerController videocontroller;

  String textlisting = '';
  int val = 0;

  List textlist = [
    "Max Mercer est un petit garçon facétieux et plein de ressources",
    "qui a été laissé à la maison pendant que sa famille est en vacances",
    "au Japon pour les fêtes.",
    "Alors, lorsqu’un couple marié, qui tente de récupérer un précieux héritage,",
    "jette son dévolu sur la maison des Mercer,",
    "c’est Max qui va devoir protéger le domicile familial des intrus…",
    "et il fera tout ce qu’il peut pour les empêcher d’entrer !",
    "Les péripéties épiques et hilarantes s’enchaînent et en dépit du chaos absolu généré",
    "par ses efforts, Max en vient à réaliser à quel point on est bien chez soi."
  ];

  affiche() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Image(
            image: AssetImage("images/maman_jai_rate_lavion.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          width: 150,
          height: 150,
          top: 215,
          left: 10,
          child: Image(
            image: AssetImage("images/maman_jai_rate_lavion.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          width: 400,
          height: 100,
          top: 5,
          left: 110,
          child: Text(
            "Manman j'ai raté l'avion",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          width: 150,
          height: 150,
          top: 245,
          left: 200,
          child: Text(
            "2021",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
            width: 200,
            height: 150,
            top: 275,
            left: 200,
            child: Container(
              color: Colors.white,
              child: Text(
                "Manman j'ai raté l'avion. la saga recommence",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }

  void initState() {
    super.initState();
    videocontroller = VideoPlayerController.asset(
        "images/maman_jai_rate_lavion_ca_recommence.mp4")
      ..initialize().then((_) {
        setState(() {});
        videocontroller.play();
        videocontroller.setLooping(true);
        videocontroller.setVolume(1.0);
        Timer.periodic(Duration(seconds: 5), (Timer timer) {
          setState(() {
            textlisting = textlist[val];
            val++;
            if (val == textlist.length) {
              val = 0;
            }
          });
        });
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
          actions: <Widget>[
            Icon(Icons.thumb_up, color: Colors.black),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: affiche(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                    Text(
                      "3251",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.red,
                    ),
                    Text(
                      "3251",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text(
                    textlisting,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: videocontroller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: videocontroller.value.aspectRatio,
                          child: VideoPlayer(videocontroller),
                        )
                      : Container(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        videocontroller.value.isPlaying
                            ? videocontroller.pause()
                            : videocontroller.play();
                      },
                      child: videocontroller.value.isPlaying
                          ? Icon(
                              Icons.pause,
                              size: 50,
                            )
                          : Icon(
                              Icons.play_arrow,
                              size: 50,
                            ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
