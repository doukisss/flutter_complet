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
  Widget hairimage(String img) {
    return Container(
      width: 600,
      height: 600,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65),
          image: DecorationImage(image: NetworkImage(img))),
    );
  }

  Widget description(String titre, String detail) {
    return Container(
      width: 450,
      height: 150,
      child: Column(children: [
        Text(
          titre,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          detail,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.blue,
          ),
        )
      ]),
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
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                child: FittedBox(
                  child: Material(
                    borderRadius: BorderRadius.circular(65),
                    elevation: 10,
                    shadowColor: Colors.grey,
                    child: Column(
                      children: [
                        hairimage(
                            "https://coupedecheveuxhomme.org/wp-content/uploads/2018/03/13743438_1297114323633286_217607531_n1-1024x10241.jpg"),
                        Padding(padding: EdgeInsets.all(5)),
                        description("Modèle puntch",
                            "Modèle puntch viub unjhn yubhion yuhojnh uhjioh uhui uhui uuh uu uiuj ujhio uihjih uihui uihunj hjn uijhi uihji uihuipjn uihjipuo uhjiopj uijiopj uiopj uij uiji ijiopj uiojpoij  ijju iojioj ioj iojpioj iji iojioj iojpiojpi "),
                        SizedBox(
                          height: 25,
                          child: Container(width: 400, color: Colors.grey),
                        ),
                        hairimage(
                            "https://coupedecheveuxhomme.org/wp-content/uploads/2018/03/26277352_212471045981885_3403692819653591040_n1-1068x12871.jpg"),
                        Padding(padding: EdgeInsets.all(5)),
                        description("Modèle puntch",
                            "Modèle puntch viub unjhn yubhion yuhojnh uhjioh uhui uhui uuh uu uiuj ujhio uihjih uihui uihunj hjn uijhi uihji uihuipjn uihjipuo uhjiopj uijiopj uiopj uij uiji ijiopj uiojpoij  ijju iojioj ioj iojpioj iji iojioj iojpiojpi "),
                        SizedBox(
                          height: 25,
                          child: Container(width: 400, color: Colors.grey),
                        ),
                        hairimage(
                            "https://coupedecheveuxhomme.org/wp-content/uploads/2018/03/26870401_168054393812825_2093106480109584384_n1-1024x10011.jpg"),
                        Padding(padding: EdgeInsets.all(5)),
                        description("Modèle puntch",
                            "Modèle puntch viub unjhn yubhion yuhojnh uhjioh uhui uhui uuh uu uiuj ujhio uihjih uihui uihunj hjn uijhi uihji uihuipjn uihjipuo uhjiopj uijiopj uiopj uij uiji ijiopj uiojpoij  ijju iojioj ioj iojpioj iji iojioj iojpiojpi "),
                        SizedBox(
                          height: 25,
                          child: Container(width: 400, color: Colors.grey),
                        ),
                        hairimage(
                            "https://coupedecheveuxhomme.org/wp-content/uploads/2018/03/13743438_1297114323633286_217607531_n1-1024x10241.jpg"),
                        Padding(padding: EdgeInsets.all(5)),
                        description("Modèle puntch",
                            "Modèle puntch viub unjhn yubhion yuhojnh uhjioh uhui uhui uuh uu uiuj ujhio uihjih uihui uihunj hjn uijhi uihji uihuipjn uihjipuo uhjiopj uijiopj uiopj uij uiji ijiopj uiojpoij  ijju iojioj ioj iojpioj iji iojioj iojpiojpi "),
                        SizedBox(
                          height: 25,
                          child: Container(width: 400, color: Colors.grey),
                        ),
                        hairimage(
                            "https://coupedecheveuxhomme.org/wp-content/uploads/2018/03/13712203_133710833733602_863682278_n1-1024x10241.jpg"),
                        Padding(padding: EdgeInsets.all(25)),
                        description("Modèle puntch",
                            "Modèle puntch viub unjhn yubhion yuhojnh uhjioh uhui uhui uuh uu uiuj ujhio uihjih uihui uihunj hjn uijhi uihji uihuipjn uihjipuo uhjiopj uijiopj uiopj uij uiji ijiopj uiojpoij  ijju iojioj ioj iojpioj iji iojioj iojpiojpi "),
                        SizedBox(
                          height: 25,
                          child: Container(width: 400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
