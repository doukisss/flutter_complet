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

enum reponse { OUI, NON, SAI_PAS }

class _MyHomePageState extends State<MyHomePage> {
  static const optionalStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  int _selectedIndex = 0;
  int _id = 0;
  String _value = '';
  String _msg = '';
  Widget _ic = Container();

  void _setvalue(String a) => setState(() {
        _value = a;
      });

  void _setmsg(String b) => setState(() {
        _msg = b;
      });

  void _setic(Widget c) => setState(() {
        _ic = c;
      });

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  Future info(String msg, Widget ic) async {
    switch (await showDialog<reponse>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(msg),
            children: <Widget>[
              SimpleDialogOption(
                child: const Text("OUI"),
                onPressed: () {
                  Navigator.pop(context, reponse.OUI);
                },
              ),
              SimpleDialogOption(
                child: const Text("NON"),
                onPressed: () {
                  Navigator.pop(context, reponse.NON);
                },
              ),
              SimpleDialogOption(
                child: const Text("JE NE SAIS PAS"),
                onPressed: () {
                  Navigator.pop(context, reponse.SAI_PAS);
                },
              )
            ],
          );
        })) {
      case reponse.OUI:
        _setvalue('OUI, je suis satisfait');
        _setic(const Icon(
          Icons.thumb_up,
          color: Colors.green,
          size: 40,
        ));
        break;
      case reponse.NON:
        _setvalue('NON, je ne suis pas satisfait');
        _setic(const Icon(
          Icons.thumb_down,
          color: Colors.red,
          size: 40,
        ));
        break;
      case reponse.SAI_PAS:
        _setvalue('JE NE SAIS PAS, je SUIS PARTAGÉ');
        _setic(const Icon(
          Icons.thumbs_up_down,
          color: Colors.blue,
          size: 40,
        ));
        break;
      default:
        null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Text(
                "Benvenue chez key coder",
                style: optionalStyle,
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "Tuto futter boite de dialogue",
                style: optionalStyle,
              ),
              const Text(
                "Votre point de vue:",
                style: TextStyle(fontSize: 30, color: Colors.blueAccent),
              ),
              Text(
                _value,
                style: const TextStyle(fontSize: 20, color: Colors.amber),
              ),
              _ic,
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int item) {
            _selectedIndex = item;
            setState(() {
              if (_selectedIndex == 0) {
                _msg = "Etes-vous satisfait des services de la clinique ?";
              }
              if (_selectedIndex == 1) {
                _msg = "Etes-vous satisfait des services du restaurant ?";
              }
              if (_selectedIndex == 2) {
                _msg = "Etes-vous satisfait des services de l'Hotel ?";
              }
              info(_msg, _ic);
            });
          },
        ));
  }
}
