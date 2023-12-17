import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
  //  color: Colors.blueGr jhey, fontSize: 30, fontWeight: FontWeight.w700);

  int initstep = 0;

  List<Step> steps = [
    const Step(
      title: Text(
        "Veuillez confirmer votre nom",
        style: TextStyle(color: Colors.blue),
      ),
      content: Text(
        "Doukiss Coder",
        style: TextStyle(color: Colors.blue),
      ),
      subtitle: Text(
        "Etape 1",
        style: TextStyle(color: Colors.blue),
      ),
    ),
    const Step(
      title: Text(
        "Veuillez confirmer votre numéro",
        style: TextStyle(color: Colors.blue),
      ),
      content: Text(
        "0107080904",
        style: TextStyle(color: Colors.blue),
      ),
      subtitle: Text(
        "Etape 2",
        style: TextStyle(color: Colors.blue),
      ),
    ),
    const Step(
      title: Text(
        "Veuillez confirmer votre adresse",
        style: TextStyle(color: Colors.blue),
      ),
      content: Text(
        "12 bp 1367 Abidjan12",
        style: TextStyle(color: Colors.blue),
      ),
      subtitle: Text(
        "Etape 3",
        style: TextStyle(color: Colors.blue),
      ),
    ),
    const Step(
      title: Text(
        "Veuillez confirmer votre sexe",
        style: TextStyle(color: Colors.blue),
      ),
      content: Text(
        "Masculin",
        style: TextStyle(color: Colors.blue),
      ),
      subtitle: Text(
        "Etape 4",
        style: TextStyle(color: Colors.blue),
      ),
    ),
    Step(
      title: Text(
        "MERCI",
        style: TextStyle(color: Colors.blue),
      ),
      content: Image.network(
          "https://media.istockphoto.com/id/1262143374/photo/holding-the-paper-with-thank-you-message-in-front-of-a-beautiful-blur-nature-background.jpg?b=1&s=612x612&w=0&k=20&c=T1AINhaJh43Jh3kbUQxMsemAI01mXOpw6vbWrgLqUyo="),
      subtitle: Text(
        "Doukiss Coder",
        style: TextStyle(color: Colors.blue),
      ),
    )
  ];

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
                    Icon(Icons.thumb_up, color: Color.fromRGBO(76, 175, 80, 1))
                  ],
                ),
                body: Stepper(
                  currentStep: initstep,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (Step) {
                    setState(() {
                      initstep = Step;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (initstep < steps.length - 1) {
                        initstep = initstep + 1;
                      } else {
                        initstep = 0;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (initstep > 0) {
                        initstep = initstep - 1;
                      } else {
                        initstep = 0;
                      }
                    });
                  },
                )
                //TabBarView(     )
                )));
  }
}
