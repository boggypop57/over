import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      title: 'Shrek',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbarsik'),
        leading: Icon(
          Icons.emoji_nature_rounded,
          size: 30,
          color: Color.fromARGB(255, 176, 149, 121),
          //shadows: [Shadow()],
        ),
        flexibleSpace: Container(
          color: Colors.blueGrey,
          child: Text('flexyShmepcy:'),
        ),
        // shape -- this is intersting
      ),

      body: Center(
        child: Container(
          color: const Color.fromARGB(232, 241, 240, 234),
          padding: EdgeInsets.all(10.0),
          child: Text('GreenDay'),
        ),
      ),
      //floatingActionButton: ,
      //persistentFooterButtons: [],
      backgroundColor: const Color.fromARGB(255, 99, 32, 12), //фон для темы
      drawer: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('First Container'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Second Container'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Third Container'),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 40,
        color: CupertinoColors.activeGreen,
        child: Expanded(child: Center(child: Text('bottom sheet'))),
      ),
    );
  }
}
/*
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
*/// That's end

//I must figure out how to write text in command line
