import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,

        appBar: AppBar(
          title: Text("My Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),

        body: Center(
          child: Text(
            "Welcome to my app!",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite),
          onPressed: () {},
        ),
      ),
    ),
  );
}
