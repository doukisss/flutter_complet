
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
        
        colorScheme:
            ColorScheme.fromSeed(seedColor:const Color.fromARGB(255, 92, 1, 248)),
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
 var _selectedIndex = 0;
static const optionalStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = [
  Text( 'Index 0: Home', 
  style: optionalStyle,),
  Text( 'IndexIndex 1: Business', 
  style: optionalStyle,),
  Text( 'Index 2: School',
  style: optionalStyle,),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index; 
    });
  }
  @override

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
        
        
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex)
          ),
        bottomNavigationBar: BottomNavigationBar(items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'School'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Business'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: _onItemTapped,
          ),

        );
  


  }
}
