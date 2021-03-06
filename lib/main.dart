import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} //Funcion principal

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridNiew',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
} //Widget sin estado

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/digital.png",
    "assets/images/fundacion.png",
    "assets/images/lbbva.png",
    "assets/images/movil.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
    "assets/images/cartera.png",
    "assets/images/bbva.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
