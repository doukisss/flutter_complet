import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget hotels(String hotelname, image, Color color, double rate) {
    return Container(
      child: Column(
        children: [
          Image.network(
            image,
            fit: BoxFit.fill,
            height: 300,
            width: 350,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  hotelname,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                StarRating(
                  length: 5,
                  between: 5,
                  color: color,
                  rating: rate,
                  starSize: 30,
                  onRaitingTap: (rate) {
                    setState(() {
                      if (color == Colors.blue) {
                        rate1 = rate;
                      }
                      if (color == Colors.red) {
                        rate2 = rate;
                      }
                      if (color == Colors.green) {
                        rate3 = rate;
                      }
                      if (color == Colors.black) {
                        rate4 = rate;
                      }
                      if (color == Colors.purple) {
                        rate5 = rate;
                      }
                      if (color == Colors.orange) {
                        rate6 = rate;
                      }
                    });
                  },
                ),
                Text("$rate / 5")
              ],
            ),
          )
        ],
      ),
    );
  }

  double rate1 = 3;
  double rate2 = 2;
  double rate3 = 4;
  double rate4 = 5;
  double rate5 = 1;
  double rate6 = 4;
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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                hotels(
                    "Onomo hotel",
                    "https://cf.bstatic.com/xdata/images/hotel/square200/437933425.webp?k=ad3ccee09f58b1b4bd2aee4c392c57ec2ad8b6843ca13febe4e0bacd390c8dbd&o=",
                    Colors.blue,
                    rate1),
                hotels(
                    "Radison blue",
                    "https://cf.bstatic.com/xdata/images/hotel/square200/361538216.webp?k=24e0183d9cfd43ea9639dd23f9470bbe3ffc6be0afed3cfd3deba40da43d5dfe&o=",
                    Colors.red,
                    rate2),
                hotels(
                    "Sofitel hotel",
                    "https://cf.bstatic.com/xdata/images/hotel/square200/330281530.webp?k=b2fc4dfb691c1c6c0d5cbe87d6190a260a55767cc069a79c5840e4dcd7093cd4&o=",
                    Colors.green,
                    rate3),
                hotels(
                    "Pullman hotel",
                    "https://cf.bstatic.com/xdata/images/hotel/square200/251920769.webp?k=483c00c72f3868c63c862b5df003c2fad93a82a0faec4b95c367cba51ad581b7&o=",
                    Colors.black,
                    rate4),
                hotels(
                    "Novotel hotel",
                    "https://cf.bstatic.com/xdata/images/hotel/square200/251611763.webp?k=e2415a01b1851d7f32c10b7bb0284a697f214afa18d423a902b69d88500a3796&o=",
                    Colors.purple,
                    rate5),
                hotels(
                    "Hotel ivotel",
                    "https://cf.bstatic.com/xdata/images/hotel/square200/512905406.webp?k=9d12dc6fb5fd1bc1d7f4036c33f175f181069162dd6045d087870d719e1fd0cc&o=",
                    Colors.orange,
                    rate6)
              ],
            )));
  }
}
