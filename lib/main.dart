import 'package:circles/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circles  Chat',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.purple.shade50,
        iconTheme: IconThemeData(
          color: Colors.purple.shade900,
        ),
        scaffoldBackgroundColor: Colors.purple.shade50,
      ),
      home: const Home(),
    );
  }
}
