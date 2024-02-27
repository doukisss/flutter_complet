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
  GlobalKey rouge = GlobalKey();
  GlobalKey jaune = GlobalKey();
  GlobalKey vert = GlobalKey();

  GlobalKey poskey = GlobalKey();

  Offset position = Offset(29, 29);
  double posx = 159.9;

  String image = "images/nike_jaune.jpeg";
  String image1 = "images/nike_rouge.jpeg";
  String image2 = "images/nike_jaune.jpeg";
  String image3 = "images/nike_vert.jpeg";
  bool b = true;
  bool c = false;

  //var positionbutton = 0.0;
  move(int a) {
    //GlobalKey? gl;
    switch (a) {
      case 1:
        {
          poskey = rouge;
          image = image1;
          c = true;
          b = false;
        }
        break;
      case 2:
        {
          poskey = jaune;
          image = image2;
          c = false;
          b = true;
        }
        break;
      case 3:
        {
          poskey = vert;
          image = image3;
          c = false;
          b = false;
        }
        break;
      default:
    }

    // ignore: unnecessary_nullable_for_final_variable_declarations
    final RenderBox box =
        poskey.currentContext?.findRenderObject() as RenderBox;

    position = box.localToGlobal(Offset.zero);
    posx = position.dx;
    print(posx);
  }

  //calculateposition() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: c
              ? Colors.red
              : b
                  ? Colors.yellow[600]
                  : Colors.green,
          leading: IconButton(
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Icon(
                Icons.keyboard_arrow_left,
                size: 30,
              ),
            ),
            onPressed: () {},
          ),
          elevation: 10,
          title: const Text(
            "Air-Nike 2.0",
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Icon(Icons.shopping_cart, size: 40, color: Colors.black),
          ],
        ),
        body: Container(
          color: c
              ? Colors.red
              : b
                  ? Colors.yellow[600]
                  : Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              left: posx,
                              top: 20,
                              duration: Duration(seconds: 1),
                              child: Container(
                                width: 90,
                                height: 30,
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: c
                                      ? Colors.red
                                      : b
                                          ? Colors.yellow[600]
                                          : Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    key: rouge,
                                    onPressed: () {
                                      setState(() {
                                        move(1);
                                      });
                                    },
                                    child: Text(
                                      "Rouge",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    key: jaune,
                                    onPressed: () {
                                      setState(() {
                                        move(2);
                                      });
                                    },
                                    child: Text(
                                      "Jaune",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    key: vert,
                                    onPressed: () {
                                      setState(() {
                                        move(3);
                                      });
                                    },
                                    child: Text(
                                      "Vert",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: Container(
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Soldes",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "20.000 CFA",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: c
                                      ? Colors.red
                                      : b
                                          ? Colors.yellow[600]
                                          : Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: c
                                  ? Colors.red
                                  : b
                                      ? Colors.yellow[600]
                                      : Colors.green,
                            ),
                            child: Text(
                              "Achat",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
