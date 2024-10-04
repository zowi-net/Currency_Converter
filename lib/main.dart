// import 'package:currency_converter_app/currency_converter2.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter_app/signup_page.dart';
import 'package:currency_converter_app/currency_converter_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency app',
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/converterpage": (context) =>  const ConverterPage(),
      },
     
    );
  }
}