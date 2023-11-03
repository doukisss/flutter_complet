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

String _val = "";

class _MyHomePageState extends State<MyHomePage> {
  static const optionalStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  Future _datePicker() async {
    final picker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030));

    if (picker != null) {
      setState(() {
        _val = picker.toString();
      });
    }
    ;
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
            TextButton(
                onPressed: _datePicker, child: const Text("Cliquer ici")),
            const Text(
              "Benvenue chez key coder",
              style: optionalStyle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              "Tuto futter boite de dialogue",
              style: optionalStyle,
            ),
            Text(
              '$_val',
              style: const TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
