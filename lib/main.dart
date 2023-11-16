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

  late List<Geo> geos;
  @override
  void initState() {
    super.initState();
    geos = Geo.geolist();
  }

  Widget tablegeo() {
    return DataTable(
        columns: const [
          DataColumn(
              label: Text(
            "Pays",
            style: TextStyle(color: Colors.blue),
          )),
          DataColumn(
              label: Text(
            "Capitale",
            style: TextStyle(color: Colors.blue),
          )),
          DataColumn(
              label: Text(
            "Continent",
            style: TextStyle(color: Colors.blue),
          ))
        ],
        rows: geos
            .map((geo) => DataRow(cells: [
                  DataCell(
                    Text(geo.pays),
                  ),
                  DataCell(
                    Text(geo.capitale),
                  ),
                  DataCell(
                    Text(geo.continent),
                  ),
                ]))
            .toList());
  }

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
                body: Center(
                  child: ListView(
                    children: [tablegeo()],
                  ),
                ))));
  }
}

class Geo {
  String pays;
  String capitale;
  String continent;
  Geo({required this.pays, required this.capitale, required this.continent});

  static List<Geo> geolist() {
    return <Geo>[
      Geo(pays: "Canada", capitale: "Toronto", continent: "Amerique"),
      Geo(pays: "USA", capitale: "Washington", continent: "Amerique"),
      Geo(pays: "Mexique", capitale: "Mexico", continent: "Amerique"),
      Geo(pays: "Brésil", capitale: "Rio", continent: "Amerique"),
      Geo(pays: "France", capitale: "Paris", continent: "Europe"),
      Geo(pays: "Belgique", capitale: "Luxembourg", continent: "Europe"),
      Geo(pays: "Italie", capitale: "Rome", continent: "Europe"),
      Geo(pays: "Espagne", capitale: "Madrid", continent: "Europe"),
      Geo(
          pays: "Côte D'Ivoire",
          capitale: "Yamoussoukro",
          continent: "Afrique"),
      Geo(pays: "Ghana", capitale: "Accra", continent: "Afrique"),
      Geo(pays: "Mali", capitale: "Bamako", continent: "Afrique"),
      Geo(pays: "Guinée", capitale: "Conakri", continent: "Afrique"),
    ];
  }
}
