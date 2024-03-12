import 'package:bmu_app/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenSize = screenInfo.size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMU',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 135, 187, 210),
        appBarTheme: AppBarTheme(
          color: const Color.fromARGB(255, 31, 132, 215),
          toolbarHeight: screenSize / 13,
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 31, 132, 215)),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}
