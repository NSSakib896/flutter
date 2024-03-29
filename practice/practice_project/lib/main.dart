import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),

      body: const Center(
        child: Text(
          'hi sakib',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 201, 35, 35),
            fontFamily: 'Raleway',
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.blue[400],
        child: Text("click"),
      ),

    ),
    debugShowCheckedModeBanner: false,
  ));
}