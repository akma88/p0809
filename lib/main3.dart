import 'package:flutter/material.dart';

void main() => runApp(MyAssetsApp());

class MyAssetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'TeddyBear'),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text('My Chat'), centerTitle: true),

        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset('assets/images/background.jpeg', fit: BoxFit.cover),
              Positioned(
                top: 150,
                child: Text(
                  "This is my chat with someone",
                  style: TextStyle(fontSize: 20, color: Colors.green[900]),
                ),
              ),

              Center(
                child: Image.asset(
                  'assets/icons/icon.jpeg',
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
