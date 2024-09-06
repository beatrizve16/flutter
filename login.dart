import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(

      padding:  const EdgeInsets.only( left: 20.0, right: 20.0),
     child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Welcome',
          style: TextStyle(fontSize: 32),
        ),
        Text(
          'Sign In to continue',
          style: TextStyle(
            fontSize: 24,
            color: Colors.grey,
          ),
        ),


        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 20.0,
            right: 20.0,
          ),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                label: Text('Email ID')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 20.0,
            right: 20.0,
          ),
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                label: Text('Password')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SizedBox(
            width: double.infinity,
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.pink,
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 14.0),
          child: SizedBox(
            width: double.infinity,
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Connect with facebook',
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 18.0,
                  )),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey.shade300,
                  )),
            ),
          ),
        ),
        Text('I am a new user'),
      ]),
      ),
    );
  }
}
