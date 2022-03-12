import 'package:custom_painter_example/pages/example_1_page.dart';
import 'package:custom_painter_example/pages/example_2_page.dart';
import 'package:custom_painter_example/pages/example_3_page.dart';
import 'package:custom_painter_example/pages/example_4_page.dart';
import 'package:custom_painter_example/pages/home_page.dart';
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
      title: 'Flutter Custom Painter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/example1': (context) => const Example1Page(),
        '/example2': (context) => const Example2Page(),
        '/example3': (context) => const Example3Page(),
        '/example4': (context) => const Example4Page(),
      },
      initialRoute: '/',
    );
  }
}
