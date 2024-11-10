import 'package:flutter/material.dart';
   class MyCard extends StatelessWidget{

 final Color color;
 final double price;
 final String title;
 final String descipt;

  const MyCard({super.key, required this.color, required this.price, required this.title, required this.descipt});
    @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
                child: Row(
                
                  children: [
                   const SizedBox(
                            height: 20,
                          ), 
                            Container(
                alignment: Alignment.center,
                             color: color,
                             height: 100,
                             width: 150,
                             child:  Text(
                              title,
                             style: TextStyle(
                             color: Colors.white,
                             fontSize: 25,
                            ), 
                            ),
                            
                            ),
                            Expanded(
                          child: Container(
                            alignment: Alignment.center,
                             child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                            Text( 
                              title,
                           style:TextStyle(
                            fontWeight: FontWeight.bold,
                           ),
                           ),
                             Text(
                descipt,
                             ),
                             Text(
                'Price: $price',
                             )
                             ],
                             ),
                            
                          ),
                            ),
                ], 
                ),
              );
         
  }
   }