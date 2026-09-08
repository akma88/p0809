import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Counter());
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterAppState();
  }
}

class CounterAppState extends State<Counter> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 150, 208),
      appBar: AppBar(title: Text("counter app")),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  number--;
                });
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 20),

            Text("$number", style: TextStyle(fontSize: 40)),

            SizedBox(width: 20),

            FloatingActionButton(
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
