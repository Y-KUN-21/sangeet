import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sangeet/tracks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sangeet',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
        accentColor: Colors.grey,
        splashColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Tracks(),
    );
  }
}
