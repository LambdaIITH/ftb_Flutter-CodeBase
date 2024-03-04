import 'package:flutter/material.dart';
import 'package:flutter_bugs/constants/routes.dart';
import 'package:flutter_bugs/home.dart';
import 'package:flutter_bugs/page_1.dart';
import 'package:flutter_bugs/page_2.dart';
import 'package:flutter_bugs/page_3.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
      title: 'Flutter Bugs',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: const HomeView(),
      routes: {
        page1: (context) => PageOne(),
        page2: (context) => PageTwo(),
        page3: (context) => const PageThree(),
      }));
}
