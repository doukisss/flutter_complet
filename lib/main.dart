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
        backgroundColor: Colors.black,
        title: const Text("Tutoriel flutter",
            style: TextStyle(color: Colors.white)),
        actions: const <Widget>[Icon(Icons.thumb_up, color: Colors.black)],
      ),
      body: const Center(
        child: Card(
          color: Colors.amberAccent,
          borderOnForeground: true,
          elevation: 50,
          shadowColor: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text(
                  "nom : doukis ",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                ),
                subtitle: Text(
                  "Prénom :  Code",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text(
                  "Phone :  ",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                ),
                subtitle: Text(
                  "0708010024",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Text(
                  "email :  ",
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                subtitle: Text(
                  "doukissss@gmail.com",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
