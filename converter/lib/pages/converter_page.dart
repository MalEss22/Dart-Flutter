import 'package:converter/card.dart';
import 'package:flutter/material.dart';
class Converter extends StatefulWidget{
  const Converter({super.key});
  @override
  State<Converter> createState() => _ConverterState();
}
class _ConverterState extends State<Converter> {
  @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
  backgroundColor: Colors.blue,
  title: const Text(
    'Product Listing',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
 elevation: 4,
    ),
    body:  Column(
     children: [
      MyCard(color: Colors.pink, price: 1000, title: 'iPhone', descipt: 'iPhone is the bbbbj'),
MyCard(color: Colors.blue, price: 800, title: 'Pixel', descipt: 'gghjbfhn eidojih'),

   ]  
    ),
  );
  
 }
  }