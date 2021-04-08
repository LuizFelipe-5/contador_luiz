import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int count = 0;

  void _counterAdd() {
    setState(() {
      count++;
    });
  }

  void _counterDecrease() {
    setState(() {
      count--;
    });
  }

  void _counterReset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count'),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(child: Text('+'), onPressed: _counterAdd),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(child: Text('-'), onPressed: _counterDecrease),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(child: Text('0'), onPressed: _counterReset),
          ],
        ),
      ),
    );
  }
}
