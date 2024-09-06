
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
      appBar: AppBar(
        leading: Icon(Icons.navigate_before),
        title: Text('Chats'),
        actions: [
          Icon(Icons.edit)
        ],
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
          ColoredBox(
            color: Colors.blue,
            child: SizedBox(
              height: 20.0,
              child: Text('All'),
            ),
          ),ColoredBox(
            color: Colors.blue,
            child: SizedBox(
              height: 20.0,
              child: Text('Unread'),
            ),
          ),ColoredBox(
            color: Colors.blue,
            child: SizedBox(
              height: 20.0,
              child: Text('Favorites'),
            ),
          ),ColoredBox(
            color: Colors.blue,
            child: SizedBox(
              height: 20.0,
              child: Text('Groups'),
            ),
          )
        ],),
        Row(children: [
          Icon(Icons.person, size: 30.0),
          Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
                'Haley James',

            ),
            Text(
                'Stand up for what you believe in',

            ),
          ]),
          ),
          ColoredBox(
            color: Colors.blue,
            child: SizedBox(
              height: 20.0,
              width: 20.0,
              child: Text('8'),
            ),
          )
        ]),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friends'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
