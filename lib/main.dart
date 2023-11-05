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
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              "PROGRAMME DE VOL",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              color: Colors.lightBlue,
              height: 500,
              width: 350,
              child: viewer(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget viewer() {
  return ListView(
    children: const <Widget>[
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Toronto - Montreal",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "2:45 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Toronto - Ottawa",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "3:45 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Montreal - Toronto",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "2:55 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.orange,
        ),
        title: Text(
          "Ottawa - Toronto",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "3:15 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Toronto - Montreal",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "2:45 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Toronto - Ottawa",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "3:45 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Montreal - Toronto",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "2:55 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.orange,
        ),
        title: Text(
          "Ottawa - Toronto",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "3:15 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Toronto - Montreal",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "2:45 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Toronto - Ottawa",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "3:45 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.orange,
        ),
        title: Text(
          "Montreal - Toronto",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "2:55 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.orange,
        ),
        title: Text(
          "Ottawa - Toronto",
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "3:15 PM",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
    ],
  );
}
