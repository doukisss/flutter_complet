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
                ),
                body: PageView.builder(
                  itemBuilder: (BuildContext buildcontext, int index) =>
                      Pagewidget(
                    entry: pages[index],
                  ),
                  itemCount: pages.length,
                ))));
  }
}

class Pageinfo {
  final String title;
  final String image;
  final String description;
  const Pageinfo(this.title, this.image, this.description);
}

final List<Pageinfo> pages = [
  const Pageinfo('LE MEILLEUR MODELE N°1', 'images/1.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°2', 'images/2.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°3', 'images/3.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°4', 'images/4.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°5', 'images/5.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°6', 'images/6.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°7', 'images/7.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°8', 'images/8.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°9', 'images/9.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adip9scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
  const Pageinfo('LE MEILLEUR MODELE N°10', 'images/10.jpeg',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
];

class Pagewidget extends StatefulWidget {
  final Pageinfo entry;
  const Pagewidget({super.key, required this.entry});

  @override
  State<Pagewidget> createState() => _PagewidgetState();
}

class _PagewidgetState extends State<Pagewidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  widget.entry.title,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Image.asset(
              widget.entry.image,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              widget.entry.description,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
