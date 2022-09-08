import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  String image ="";
  String flutterImage="";
  String reactImage="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            Text(
              "Please selecet you Course!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Divider(height: 35),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text("based on dart programming",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.green[700])),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: flutterCourse,
                onChanged: ((val) {
                  setState(() {
                    flutterImage="images/00.png";
                    flutterCourse = val!;
                  });
                })),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text(
                  "based on dart programming",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.green[700]),
                ),
                title: Text(
                  "React",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: reactCourse,
                onChanged: ((val) {
                  setState(() {
                    reactImage="images/11.png";
                    
                    reactCourse = val!;
                  });
                })),
                if(flutterImage.isNotEmpty)
                Image(image: AssetImage(flutterImage)),
                if(reactImage.isNotEmpty)
                Image(image: AssetImage(reactImage))
               

          ],
        )),
      ),
    );
  }
}