import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var cara = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cara ou Coroa", textAlign: TextAlign.center),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 120,
              width: 120,
              decoration: BoxDecoration(color: cara?Colors.teal:Colors.indigo, shape: BoxShape.circle),
              child: cara?Text("Cara",style: TextStyle(color: Colors.white),  textAlign: TextAlign.center):Text("Coroa",style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
        
            ),
            ElevatedButton(
              child: Text(":)", style: TextStyle(
                fontSize: 30.0,
              )),
              onPressed: (){
                cara = Random().nextBool();
                setState(() {
        
                });
        
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey,
                  )),
        
            )
          ],
        ),
      ),
    );
    return const Placeholder();
  }
}
