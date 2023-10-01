import 'package:flutter/material.dart';
import 'package:simple_game/image_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          centerTitle: true,
          title: Text("تطابق الصور"),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    );
  }
}
