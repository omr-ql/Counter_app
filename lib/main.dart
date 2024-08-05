
import 'package:conuter/pages/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Counter(),
      ),
    )
  );
}