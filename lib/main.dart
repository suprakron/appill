import 'package:flutter/material.dart';
import "login.dart";

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สมัครสมาชิก',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'สมัครสมาชิก'),
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
                labelText: 'ชื่อ',
              )
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'อายุ',
              )
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'เพศ',
              )
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'ชื่อผู้ใช้งาน',
              )
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'รหัสผ่าน',
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Text('สมัครสมาชิก'),
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
