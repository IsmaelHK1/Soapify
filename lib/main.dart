import 'package:flutter/material.dart';
import 'package:soapify/utils/audio.dart';
import 'package:soapify/views/audiopage.dart';
import 'package:soapify/utils/music.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  load(context);
    return Scaffold(
      appBar: AppBar(
      ),
		  body : const Center(
          child : Image(
            image: AssetImage('lib/assets/img/load.gif'),
            width: 400,
            height: 400,
          ),
      ),
    );
  }
}

Future load(BuildContext context) async {
  await addMusic();
  await play(true, 0);
  Future.delayed(Duration(seconds: 5), await Navigator.push(context , MaterialPageRoute(builder: (context) => AudioPage())));
}