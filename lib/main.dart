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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Tutoriel flutter",
            style: TextStyle(color: Colors.white)),
        actions: const <Widget>[Icon(Icons.thumb_up, color: Colors.green)],
      ),
      body: Container(child: getListItem()),
    );
  }
}

List<String> getlistElement() {
  var item = List.generate(500, (index) => "Article: $index");
  return item;
}

List<String> getlistElementing() {
  return [
    "ABIDJAN => ISSIA",
    "ABIDJAN => GAGNOA",
    "ABIDJAN => SOUBRE",
    "ABIDJAN => DIVO",
    "ABIDJAN => LAKOTA",
    "ABIDJAN => GUIGLO",
    "ABIDJAN => KORHOGO",
    "ABIDJAN => FERKE",
    "ABIDJAN => BONDOUKOU",
    "ABIDJAN => ODIENNE",
    "ABIDJAN => GBELEBAN",
    "ABIDJAN => SAN-PDRO",
    "ABIDJAN => ABOISSO",
    "ABIDJAN => NOE",
    "ABIDJAN => BASSAM",
    "ABIDJAN => ABOISSO",
    "ABIDJAN => TIASSALE",
    "ABIDJAN => MAN",
    "ABIDJAN => DALOA",
    "ABIDJAN => DABOU",
    "ABIDJAN => SAMATIGUILA"
  ];
}

Widget getListItem() {
  var elementlist = getlistElementing();
  var listview = ListView.builder(
      itemCount: elementlist.length,
      itemBuilder: (context, val) {
        return ListTile(
          leading: const Icon(
            Icons.nature,
            color: Colors.blue,
            size: 30,
          ),
          title: Text(elementlist[val],
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
          onTap: () {
            debugPrint(elementlist[val]);
          },
        );
      });
  return listview;
}
