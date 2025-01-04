import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('Welcome', textAlign: TextAlign.center)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Text(
          'Estamos aprendiendo flutter',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 34),
        )),
      ),
    ),
  ));
}
