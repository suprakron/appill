import 'package:flutter/material.dart';
import 'main.dart';
import 'showpill.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'เข้าสู่ระบบ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'เข้าสู่ระบบ'),
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
                labelText: 'ชื่อผู้ใช้งาน',
              )
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'รหัสผ่าน',
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
                  child: Text('เข้าสู่ระบบ'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
              )
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()));
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
