import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Box'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}
