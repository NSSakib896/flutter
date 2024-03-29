import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),

      body: Image.asset('assets/cat2.jpeg'),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.blue[400],
        child: Text("click"),
      ),

    );
  }
}