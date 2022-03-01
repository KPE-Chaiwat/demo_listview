import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tong_layout/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
