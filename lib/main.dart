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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = '';

  void show(String a) {
    setState(() {
      value = a;
    });
  }

  void showx(String a) => setState(() => value = a);

  void showSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(20),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Text sheet button',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )
              ],
            ),
          );
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
          actions: const <Widget>[Icon(Icons.thumb_up, color: Colors.black)],
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
              onPressed: () => showx('Zoum map'),
              icon: const Icon(Icons.zoom_out_map)),
          IconButton(
              onPressed: () => show('Balance'),
              icon: const Icon(Icons.account_balance_wallet)),
          IconButton(
              onPressed: () => showx('info bank'),
              icon: const Icon(Icons.add_comment)),
        ],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: showSheet,
                child: const Text('Cliquer iCi', style: TextStyle(fontSize: 25),)
              ),
              const Text(
                'Bienvenue chez DoukisssCoder',
                style: TextStyle(color: Colors.blueGrey, fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                'Tuto fluter footer & sheet button',
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                value,
                style: const TextStyle(color: Colors.red, fontSize: 25),
              )
            ],
          ),
        ));
  }
}
