import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // variable:
  int _counter = 0;

  // function to increment the number:
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // UI (User Interface):
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Counter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed it this many times:',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 5), // Add space between text and counter
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 40), // Make the counter bold
              ),
              const SizedBox(height: 5), // Add space between counter and button
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the button color to blue
                ),
                child: const Text(
                  'Press!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}