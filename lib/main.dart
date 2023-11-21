import 'package:flutter/foundation.dart';
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

  String value = '';
  String name = '';
  String phone = '';
  String password = '';

  final formkey = new GlobalKey<FormState>();

  @override
  void affichage(String a) {
    setState(() {
      value = 'Bienvenue $a';
    });
  }

  validationform() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      debugPrint(name);
      debugPrint(phone);
      debugPrint(password);
    } else {}
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
              body: Form(
                key: formkey,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Nom',
                            hintText: 'inserer votre nom ici',
                            icon: Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.blue,
                            )),
                        validator: (val) => '$val'.isEmpty
                            ? 'veillez renseignez votre nom'
                            : null,
                        onSaved: (val) => name = '$val',
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        autofocus: true,
                        onChanged: affichage,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Numero',
                            hintText: 'inserer votre phone ici',
                            icon: Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.blue,
                            )),
                        validator: (val) => '$val'.isEmpty
                            ? 'veillez renseignez votre phone'
                            : null,
                        onSaved: (val) => phone = '$val',
                        keyboardType: TextInputType.phone,
                        autocorrect: true,
                        autofocus: true,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            hintText: 'inserer votre mot de passe ici',
                            icon: Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.blue,
                            )),
                        validator: (val) => '$val'.isEmpty
                            ? 'veillez renseignez votre mot de passe'
                            : null,
                        onSaved: (val) => password = '$val',
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        autocorrect: true,
                        autofocus: true,
                      ),
                      TextButton(
                          onPressed: validationform, child: Text('Valider'))
                    ],
                  ),
                ),
              ),
            )));
  }
}
