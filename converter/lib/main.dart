import 'package:flutter/material.dart';
import 'package:converter/pages/converter_page.dart';

void main() {
  runApp(const ConverterApp());
}

class ConverterApp extends StatelessWidget {
  const ConverterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner :false,
     title: 'Flutter Demo',//Title of your app on the web.
     theme: ThemeData(
       useMaterial3:false,
        ),
      home:   const Converter()
    );
  }
}


