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
  static const optionalStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final GlobalKey<ScaffoldState> _sb = GlobalKey<ScaffoldState>();

  void _snackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vtre message a ben ete supprmé")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sb,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Tutoriel flutter",
            style: TextStyle(color: Colors.white)),
        actions: const <Widget>[Icon(Icons.thumb_up, color: Colors.black)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _snackBar,
              child: const Text(
                "Benvenue hez",
                style: optionalStyle,
              ),
            ),
            const Text(
              "Benvenue hez ey der",
              style: optionalStyle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              "Tut futter hez ey der",
              style: optionalStyle,
            ),
          ],
        ),
      ),
    );
  }
}
