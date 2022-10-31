import 'package:flutter/material.dart';
import 'addpill.dart';

void main() {
  runApp(const Showpill());
}

class Showpill extends StatelessWidget {
  const Showpill({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ยาที่ต้องกิน',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ยาที่ต้องกิน'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.push(
            context,
        MaterialPageRoute(builder: (context) => const Addpill()));
        },
        child: const Icon(Icons.add),
      ), 
    );
  }
}
