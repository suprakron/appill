import 'package:flutter/material.dart';
import 'main.dart';
import 'showpill.dart';

void main() {
  runApp(const Addpill());
}

class Addpill extends StatelessWidget {
  const Addpill({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'เพิ่มรายการแจ้งเตือนยา',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'เพิ่มรายการแจ้งเตือนยา'),
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
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'ชื่อยา',
              )
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'จำนวน',
              )
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'วันที่',
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Showpill()));
                  },
                  child: Text('เพิ่มรายการยา'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
              )
            ),
                ]
              )
          ]
        )
      ),
    );
  }
}

