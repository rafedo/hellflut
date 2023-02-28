import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hello world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Text(
            'Halo dunia',
            textDirection: TextDirection.ltr,
          ),
        ),
      )
    )
  );
}